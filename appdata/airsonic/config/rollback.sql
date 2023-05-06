-- *********************************************************************
-- SQL to roll back currently unexecuted changes
-- *********************************************************************
-- Change Log: classpath:liquibase/db-changelog.xml
-- Ran at: 5/4/23, 5:18 PM
-- Against: SA@jdbc:hsqldb:file:/config/db/airsonic;hsqldb.tx=mvcc;sql.enforce_size=false;sql.char_literal=false;sql.nulls_first=false;sql.pad_space=false;hsqldb.defrag_limit=50;shutdown=true
-- Liquibase version: 4.6.2
-- *********************************************************************

-- Lock Database
UPDATE PUBLIC.DATABASECHANGELOGLOCK SET LOCKED = TRUE, LOCKEDBY = '172.23.0.1 (172.23.0.1)', LOCKGRANTED = '2023-05-04 17:18:13.752' WHERE ID = 1 AND LOCKED = FALSE;

-- Release Database Lock
UPDATE PUBLIC.DATABASECHANGELOGLOCK SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

