#!/bin/bash

sudo dnf update -y
sudo dnf install httpd -y

# db setup PostgreSQL
sudo dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo dnf install -y postgresql17-server
sudo /usr/pgsql-17/bin/postgresql-17-setup initdb
sudo systemctl enable postgresql-17
sudo systemctl start postgresql-17


# create user called bugs for bugzilla, run as user postgres (super user of postgresql)
sudo -u postgres psql -c "CREATE USER bugs WITH CREATEDB NOCREATEROLE NOSUPERUSER PASSWORD 'bugs_pass';"
