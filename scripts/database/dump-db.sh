#!/usr/bin/env bash

# Dump the specified database to a file of the same name.
#
# Example:
#   $ dump-db conta
#
# This will dump the conta database to a file named conta.sql.

if [ -z "$1" ]
then
    echo "You must supply a database name!"
    exit 1
fi

echo "Dumping the $1 database..."
docker exec -i ortopedica-mysql mysqldump -ppassword --add-drop-database --skip-add-drop-table -B $1 > ./database-backups/$1.sql
echo "Finished dumping the $1 database!"
