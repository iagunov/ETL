-- ������ ��� ��������� ������
ALTER SESSION SET "_ORACLE_SCRIPT" = true;

-- �������� ������������  DS � ��������
CREATE USER DS IDENTIFIED BY 123456;
GRANT CREATE SESSION TO DS;
ALTER USER DS quota unlimited on USERS;

-- �������� ������������  LOGS � ��������
CREATE USER LOGS IDENTIFIED BY 123456;
GRANT CREATE SESSION TO LOGS;
ALTER USER LOGS quota unlimited on USERS;

--�������� ��� ������������ ���������
SELECT username FROM dba_users WHERE username = 'DS' OR username = 'LOGS';