-- *********************************************************************
-- SQL to roll back currently unexecuted changes
-- *********************************************************************
-- Change Log: classpath:liquibase/db-changelog.xml
-- Ran at: 6/1/23, 3:16 PM
-- Against: SA@jdbc:hsqldb:file:/config/db/airsonic;hsqldb.tx=mvcc;sql.enforce_size=false;sql.char_literal=false;sql.nulls_first=false;sql.pad_space=false;hsqldb.defrag_limit=50;shutdown=true
-- Liquibase version: 4.6.2
-- *********************************************************************

-- Lock Database
UPDATE PUBLIC.DATABASECHANGELOGLOCK SET LOCKED = TRUE, LOCKEDBY = '3cd3e4eb1a75 (172.23.0.11)', LOCKGRANTED = '2023-06-01 15:16:08.068' WHERE ID = 1 AND LOCKED = FALSE;

-- Release Database Lock
UPDATE PUBLIC.DATABASECHANGELOGLOCK SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

