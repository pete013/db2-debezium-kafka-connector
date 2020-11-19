#!/bin/bash

su - db2inst1 -c "
  db2 connect to $DBNAME;
  db2 -tvmf /db2/scripts/01_create_tables.sql;
  db2 -tvmf /db2/scripts/02_enable_cdc.sql;
  db2 -tvmf /db2/scripts/03_populate_tables.sql;
  db2 connect reset;
"