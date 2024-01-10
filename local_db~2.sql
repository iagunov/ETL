alter SESSION set NLS_DATE_FORMAT = "DD-MM-YYYY HH24:MI:SS";
------------------------------------------------------
CREATE TABLE LOGS.LOAD_LOGS (
    ROW_CHANGE_TIME TIMESTAMP DEFAULT SYSTIMESTAMP,
             SOURCE VARCHAR(50),
    ACTION_DATETIME DATE,
             ACTION VARCHAR2(50)
)
TABLESPACE USERS;
------------------------------------------------------
INSERT INTO  LOGS.LOAD_LOGS (source, action_datetime,action)
VALUES ('all', sysdate, 'START');

------------------------------------------------------
-- TRUNCATE TABLE LOGS.LOAD_LOGS
-- SELECT * FROM LOGS.LOAD_LOGS ORDER BY action_datetime;

