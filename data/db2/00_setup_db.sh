#!/bin/bash

su - db2inst1 -c "
  db2 connect to testdb;
  db2 -tvmf /db2/scripts/01_create_table_orders.sql;
  db2 -tvmf /db2/scripts/02_populate_orders.sql;
  db2 connect reset;
"