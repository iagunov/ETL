-- Скрипт для избежания ошибок
ALTER SESSION SET "_ORACLE_SCRIPT" = true;

-- Создание пользователя  DS с грантами
CREATE USER DS IDENTIFIED BY 123456;
GRANT CREATE SESSION TO DS;
ALTER USER DS quota unlimited on USERS;

-- Создание пользователя  LOGS с грантами
CREATE USER LOGS IDENTIFIED BY 123456;
GRANT CREATE SESSION TO LOGS;
ALTER USER LOGS quota unlimited on USERS;

--Проверка что пользователи создались
SELECT username FROM dba_users WHERE username = 'DS' OR username = 'LOGS';