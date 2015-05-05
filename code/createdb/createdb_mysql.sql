/*
  createdb_mysql.sql

  Created on   : 4 May 2015 by Tom Pollard
  Last updated :
     $Author: Tom Pollard$
     $Date: 4 May 2015$

Load MIMIC-II v3.0-b1 flat files into a MySQL database
*/

-- 1. CREATE THE DATABASE

CREATE DATABASE mimic2_v3_0_b1;

-- 2. CREATE THE TABLES
-- Mapping of datatypes:
-- http://docs.oracle.com/cd/E12151_01/doc.150/e12155/oracle_mysql_compared.htm#g1034154

USE mimic2_v3_0_b1;

CREATE TABLE IF NOT EXISTS additives (
  subject_id mediumint unsigned DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS admissions (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS censusevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS chartevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS cptevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS d_caregivers (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS d_careunits (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS d_items (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS d_patients (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS d_units (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS demographic_detail (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS drgevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS icd9 (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS icustaydays (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS icustayevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS ioevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS labevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS medevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS microbiologyevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS noteevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS orderentry (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS poe_med_order (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS procedureevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS totalbalevents (
  XXX int(11) DEFAULT NULL,
  xxxid integer NOT NULL UNIQUE,
  PRIMARY KEY (XXX)
) ENGINE=InnoDB;

-- 3. IMPORT THE TABLES

LOAD DATA LOCAL INFILE '/path/to/file.txt' 
INTO TABLE additives



