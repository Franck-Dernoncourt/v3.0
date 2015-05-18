---
layout: page
title: "Installation"
category: ins
date: 2015-05-18 11:28:16
order: 2
---

## Installing the MIMIC-II Database

Before working with MIMIC-II data, you will first need to complete the [application process](first-steps.html). Once this process is complete, you will be granted access to a [set of data files on PhysioNet](https://physionet.org/works/MIMICIIClinicalDatabase/) which can be used to reconstruct the database. The process for downloading the data files and reconstructing the text-delimited tables is as follows:

- download all of the compressed files linked from the [PhysioNet webpage](https://physionet.org/works/MIMICIIClinicalDatabase/)
- check the integrity of the compressed files against the checksums. On a unix-based system, this can be done with:
``` 
md5sum -c md5_checksum_compressed.hash
```
- decompress the files as follows:  
``` 
cat mimic2v30b.tgz_* | tar xvz
```
- check the integrity of the reconstructed data tables with:  
``` 
md5sum -c md5_checksum_uncompressed.hash
```

Once the tables have been downloaded, they can be imported into a relational database system such as [Postgres](http://www.postgresql.org/), [Oracle](http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index-092322.html), or [Maria-DB](https://mariadb.org/) to reconstruct MIMIC-II. Guidelines for the import process will be provided soon.




