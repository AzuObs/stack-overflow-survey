#!/usr/bin/env bash

cd /docker-entrypoint-initdb.d/

echo "Copy csv to where MySql can access them"
cp dbdump/survey* /var/lib/mysql-files/

echo "Import StackOverflowSurvey..."
mysql -h localhost -u root StackOverflowSurvey < dbdump/import.sql
