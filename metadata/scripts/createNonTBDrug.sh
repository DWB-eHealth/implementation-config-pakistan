#!/bin/bash
# $1 is the db username and $2 is db password.
# To run the script $1 : db username and $2: db password need to be passed. ex ./createNonTBDrug.sh <db username> <db password>

mysql -u$1 -p$2 openmrs < ../nonTBDrugs/addformulation.sql
mysql -u$1 -p$2 openmrs < ../nonTBDrugs/formulations.sql
mysql -u$1 -p$2 openmrs < ../nonTBDrugs/add_other_drugs.sql
mysql -u$1 -p$2 openmrs < ../nonTBDrugs/other_drugs.sql

echo "Non TB drugs imported successfully"