#!/bin/sh
# Forcer la sortie en cas d'erreur
set -e
#Debug mode
#set -x

# Version de Newman
echo "## VERSION NEWMAN ##"
newman --version

# Find Postman Collections
collections=$(find . | grep postman_collection.json)
#echo "## COLLECTIONS FILES"
echo $collections

# Keep entrypoint simple: we must pass the standard JMeter arguments
echo "## NEWMAN RUN ##"
echo "START Running NEWMAN on `date`"
for collection in $collections
  do
    newman run $collection --reporters cli,junit --reporter-junit-export $(basename -- $collection)_junit_report.xml
done
echo "END Running NEWMAN on `date`"