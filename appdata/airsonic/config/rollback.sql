-- *********************************************************************
-- SQL to roll back currently unexecuted changes
-- *********************************************************************
-- Change Log: classpath:liquibase/db-changelog.xml
-- Ran at: 5/24/23, 1:58 PM
-- Against: SA@jdbc:hsqldb:file:/config/db/airsonic;hsqldb.tx=mvcc;sql.enforce_size=false;sql.char_literal=false;sql.nulls_first=false;sql.pad_space=false;hsqldb.defrag_limit=50;shutdown=true
-- Liquibase version: 4.6.2
-- *********************************************************************

-- Lock Database
UPDATE PUBLIC.DATABASECHANGELOGLOCK SET LOCKED = TRUE, LOCKEDBY = 'a08d0298389d (10.0.1.6)', LOCKGRANTED = '2023-05-24 13:58:50.547' WHERE ID = 1 AND LOCKED = FALSE;

-- Release Database Lock
UPDATE PUBLIC.DATABASECHANGELOGLOCK SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

