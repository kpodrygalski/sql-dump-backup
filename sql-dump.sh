#!/bin/bash 
# Author: Konrad Rivss Podrygalski

PASS=here_input_your_sudo_user_password
DB=here_input_db_name
SQL_USR=here_input_your_sql_user_name
SQL_PSW=here_input_your_sql_user_password
BCK_DIR=here_input_where_output_file_will_be_stored
TIMESTAMP=$(date +%d-%m-%Y_%H-%M-%S)

if [ -d $BCK_DIR ] 
then
	echo "Directory exist. File will be moved to: $BCK_DIR"
	echo $PASS | sudo -S mysqldump -u $SQL_USR --password=$SQL_PSW $DB > $BCK_DIR/wp_new-$TIMESTAMP.sql
	echo "SQL Backup Created! - Script workd is done!"
else
	echo "Directory not exsist!"
fi


