
-- Oracle Database 19c
-- RMAN Same-Server Restore
-- Database Rename: ORCL to TEST6

-- Prerequisites:
-- Physical datafiles must already be restored.
-- The target instance must be in NOMOUNT mode.
-- DB_NAME in the PFILE must be TEST6.
-- Verify all file paths before execution.
-- Execute only against the intended target instance.

CREATE CONTROLFILE REUSE SET DATABASE "TEST6"
RESETLOGS ARCHIVELOG
    MAXLOGFILES 16
    MAXLOGMEMBERS 3
    MAXDATAFILES 100
    MAXINSTANCES 8
    MAXLOGHISTORY 292
LOGFILE
    GROUP 1 '/u01/app/oracle/oradata/TEST6/redo01.log'
        SIZE 200M BLOCKSIZE 512,
    GROUP 2 '/u01/app/oracle/oradata/TEST6/redo02.log'
        SIZE 200M BLOCKSIZE 512,
    GROUP 3 '/u01/app/oracle/oradata/TEST6/redo03.log'
        SIZE 200M BLOCKSIZE 512
DATAFILE
    '/u01/app/oracle/oradata/TEST6/data_D-ORCL_TS-SYSTEM_FNO-1',
    '/u01/app/oracle/oradata/TEST6/data_D-ORCL_TS-SALES_FNO-2',
    '/u01/app/oracle/oradata/TEST6/data_D-ORCL_TS-SYSAUX_FNO-3',
    '/u01/app/oracle/oradata/TEST6/data_D-ORCL_TS-UNDOTBS1_FNO-4',
    '/u01/app/oracle/oradata/TEST6/data_D-ORCL_TS-HR_FNO-5',
    '/u01/app/oracle/oradata/TEST6/data_D-ORCL_TS-USERS_FNO-7'
CHARACTER SET AL32UTF8;
