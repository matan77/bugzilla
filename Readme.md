# Bugzilla by Matan Haver

## Notes

I deployed it on AlmaLinux 9 which is an open-source Linux distribution which I familiar with.  
compatible with Red Hat Enterprise Linux (RHEL)

For the task i deployed all (db, webserver and app) on the same vm,  
even though its not considered as a best practice

vm os - AlmaLinux 9  
db - postgresql  
webserver - apache

## I used the following guides

https://bugzilla.readthedocs.io/en/latest/installing/linux.html  
https://bugzilla.readthedocs.io/en/latest/installing/postgresql.html#add-a-user

The vm is deployed using vagrant with virtual box, which automate the process  
The steps I run to configure the vm is under `config/init.sh`  
The script runs only for the first time when the vm is created  
**some of the steps I did manually**

## configuration files I edited

- pg_hba.conf of postgres for db authentication
