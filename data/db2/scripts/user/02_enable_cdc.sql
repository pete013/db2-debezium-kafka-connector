VALUES ASNCDC.ASNCDCSERVICES('status','asncdc');

-- register tables for cdc
CALL ASNCDC.ADDTABLE('DB2INST1','ORDERS');

VALUES ASNCDC.ASNCDCSERVICES('reinit','asncdc');