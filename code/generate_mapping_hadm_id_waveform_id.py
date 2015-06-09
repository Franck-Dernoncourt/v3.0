'''
@author: Franck Dernoncourt <francky@mit.edu>
@summary: Generate mapping between subject id in the clinical database, hospital admission id in the clinical database, waveform id
@version: MIMIC Clinical DB 2V30 and MIMIC Waveform DB 2V3. 
@requires: cx_Oracle Python plug-in and a running SSH tunnel to MIMIC Clinical DB 2V30. 

Created on May 31, 2015
'''

from __future__ import print_function
from __future__ import division

import cx_Oracle

def get_cursor():
    '''
    Get a cursor to the database
    '''
    ip = '127.0.0.1'
    port = '1521'
    sid = 'mimic2'
    dsnStr = cx_Oracle.makedsn(ip, port, sid)
    username = 'ENTER_YOUR_USERNAME_HERE' # e.g. 'FRANCK.DERNONCOURT'
    password = 'ENTER_YOUR_PASSWORD_HERE' # e.g. '123456'
    db = cx_Oracle.connect(user=username, password=password, dsn=dsnStr)    
    cursor = db.cursor()
    return cursor


from datetime import datetime
import urllib2

cursor = get_cursor()
file_hadm_id_waveform_id = open('mapping_hadm_id_waveform_id.csv', 'w')
waveform_id_with_no_hadm_id = open('waveform_id_with_no_hadm_id.csv', 'w')

def list_patient_with_no_hadm_id():
    '''
    List all patient IDs that have no HADM ID.
    See https://github.com/mimic2/v3.0/issues/69
    '''
    patient_with_no_hadm_id = []
    sql = '''
    WITH t1 AS
      (SELECT DISTINCT(MIMIC2V30.ADMISSIONS.SUBJECT_ID) FROM MIMIC2V30.ADMISSIONS)
    SELECT DISTINCT(MIMIC2V30.D_PATIENTS.SUBJECT_ID)
    FROM MIMIC2V30.D_PATIENTS
    WHERE SUBJECT_ID NOT IN
      (SELECT * FROM t1)
    ORDER BY SUBJECT_ID ASC
    '''
    cursor.execute(sql)
    for row in cursor:
        patient_with_no_hadm_id.append(int(row[0]))    
    return patient_with_no_hadm_id
    
def process_patient(patient_url, patient_with_no_hadm_id):
    '''
    Output: Generate mapping between subject id in the clinical database, hospital admission id in the clinical database, waveform id
    Input: Take a URL like http://physionet.org/physiobank/database/mimic2wdb/matched/s00124/s00124-3297-08-03-21-51.hea
    Implementation: For each hea file, write one row subject id, hadm_id, waveform_id    
    '''    
    # get patient_id
    patient_id = int(patient_url.split('/')[-2][1:])
    print(patient_id)
    
    # This patient has year > 10000 (see https://github.com/mimic2/v3.0/issues/76), so we ignore it.
    if patient_id == 27446:
        return
    
    # Get timestamp
    response = urllib2.urlopen(patient_url)
    header = response.readline().strip()
    timestamp = ' '.join(header.split(' ')[4:])
    timestamp = datetime.strptime(timestamp, '%H:%M:%S.%f %d/%m/%Y')
    
    # Get waveform ID
    second_line = response.readline()
    waveform_id = int(second_line.strip().split('_')[0])
    
    # Get HADM_ID that contains the timestamp
    sql = 'SELECT HADM_ID, ADMIT_DT, DISCH_DT FROM  MIMIC2V30.admissions WHERE SUBJECT_ID = ' + str(patient_id)
    cursor.execute(sql)
    hadm_id_found = False
    for row in cursor:
        hadm_id = row[0]  
        admit_dt = row[1]
        disch_dt = row[2]
        if admit_dt <= timestamp <= disch_dt:
            new_output = str(patient_id) + ',' + str(hadm_id) + ',' + str(waveform_id) + '\n'
            file_hadm_id_waveform_id.write(new_output)
            hadm_id_found = True

    # If the waveform has no corresponding HADM ID, log it.
    if not hadm_id_found and patient_id not in patient_with_no_hadm_id :
        new_output = str(patient_id) + ',' + str(waveform_id) + ',' + patient_url + '\n'
        waveform_id_with_no_hadm_id.write(new_output)

def save_web_page(url_to_save, filename):
    '''
    http://stackoverflow.com/questions/13332192/inherent-python-way-to-save-web-page-source
    '''
    page = urllib2.urlopen(url_to_save)
    page_content = page.read()
    with open(filename, 'w') as fid:
        fid.write(page_content)


def main():
    '''
    This is the main function
    '''
    patient_with_no_hadm_id = list_patient_with_no_hadm_id()
    filename = 'RECORDS-waveforms.txt'
    save_web_page('http://physionet.org/physiobank/database/mimic2wdb/matched/RECORDS-waveforms', filename)
    file = open(filename, 'r')
    for cur_line in file:
        cur_line = cur_line.strip()
        if len(cur_line) == 0: continue
        url_prefix = 'http://physionet.org/physiobank/database/mimic2wdb/matched/'
        patient_url = url_prefix + cur_line + '.hea'
        process_patient(patient_url, patient_with_no_hadm_id)
    file.close()    

if __name__ == "__main__":
    main()
    #cProfile.run('main()') # if you want to do some profiling