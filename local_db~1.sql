-- создание таблицы FT_BALANCE_F
CREATE TABLE DS.FT_BALANCE_F (
    on_date DATE not null,
    account_rk NUMBER not null,
    currency_rk NUMBER,
    balance_out FLOAT
)
TABLESPACE USERS;
-- Добавление первичных составных ключей
ALTER TABLE DS.FT_BALANCE_F
ADD primary key (on_date, account_rk);
-- SELECT * FROM DS.FT_BALANCE_F ORDER BY account_rk;
-- TRUNCATE TABLE DS.FT_BALANCE_F;
------------------------------------------------------

-- Создание таблицы FT_POSTING_F
CREATE TABLE DS.FT_POSTING_F (
    oper_date DATE not null,
    credit_account_rk NUMBER not null,
    debet_account_rk NUMBER not null,
    credit_amount FLOAT,
    debet_amount FLOAT
)
TABLESPACE USERS;
-- Добавление первичных составных ключей
ALTER TABLE DS.FT_POSTING_F
ADD primary key (oper_date, credit_account_rk, debet_account_rk);
-- SELECT * FROM DS.FT_POSTING_F;
-- TRUNCATE TABLE DS.FT_POSTING_F;
------------------------------------------------------

-- Создание таблицы MD_ACCOUNT_D
CREATE TABLE DS.MD_ACCOUNT_D (
    data_actual_date DATE not null,
    data_actual_end_date DATE not null,
    account_rk NUMBER not null,
    account_number VARCHAR2(20 char) not null,
    char_type VARCHAR2(1 char) not null,
    currency_rk NUMBER not null,
    currency_code VARCHAR2(3 char) not null
)
TABLESPACE USERS;
-- Добавление первичных составных ключей
ALTER TABLE DS.MD_ACCOUNT_D
ADD primary key (data_actual_date, account_rk);
-- SELECT * FROM DS.MD_ACCOUNT_D;
-- TRUNCATE TABLE DS.MD_ACCOUNT_D;
------------------------------------------------------

-- Создание таблицы MD_CURRENCY_D
CREATE TABLE DS.MD_CURRENCY_D (
    currency_rk NUMBER not null,
    data_actual_date DATE not null,
    data_actual_end_date DATE,
    currency_code VARCHAR2(3 char),
    code_iso_char VARCHAR2(3 char)
)
TABLESPACE USERS;
-- Добавление первичных составных ключей
ALTER TABLE DS.MD_CURRENCY_D
ADD primary key (currency_rk, data_actual_date);
-- SELECT * FROM DS.MD_CURRENCY_D;
-- TRUNCATE TABLE DS.MD_CURRENCY_D;
------------------------------------------------------

-- Создание таблицы MD_EXCHANGE_RATE_D
CREATE TABLE DS.MD_EXCHANGE_RATE_D (
    data_actual_date DATE not null,
    data_actual_end_date DATE,
    currency_rk NUMBER not null,
    reduced_cource FLOAT,
    code_iso_num VARCHAR2(3 char)
)
TABLESPACE USERS;
-- Добавление первичных составных ключей
ALTER TABLE DS.MD_EXCHANGE_RATE_D
ADD primary key (data_actual_date, currency_rk);
-- SELECT * FROM DS.MD_EXCHANGE_RATE_D;
-- TRUNCATE TABLE DS.MD_EXCHANGE_RATE_D;
------------------------------------------------------

-- Создание таблицы DS.MD_LEDGER_ACCOUNT_S
CREATE TABLE DS.MD_LEDGER_ACCOUNT_S (
    chapter CHAR(1 char),
    chapter_name VARCHAR2(16 char),
    section_number INTEGER,
    section_name VARCHAR2(22 char),
    subsection_name VARCHAR2(21 char),
    ledger1_account INTEGER,
    ledger1_account_name VARCHAR2(47 char),
    ledger_account INTEGER not null,
    ledger_account_name VARCHAR2(153 char),
    characteristic CHAR(1 char),
    is_resident INTEGER,
    is_reserve INTEGER,
    is_reserved INTEGER,
    is_loan INTEGER,
    is_reserved_assets INTEGER,
    is_overdue INTEGER,
    is_interest INTEGER,
    pair_account VARCHAR2(5 char),
    start_date DATE not null,
    end_date DATE,
    is_rub_only INTEGER,
    min_term VARCHAR2(1 char),
    min_term_measure VARCHAR2(1 char),
    max_term VARCHAR2(1 char),
    max_term_measure VARCHAR2(1 char),
    ledger_acc_full_name_translit VARCHAR2(1 char),
    is_revaluation VARCHAR2(1 char),
    is_correct VARCHAR2(1 char)
)
TABLESPACE USERS;
-- Добавление первичных составных ключей
ALTER TABLE DS.MD_LEDGER_ACCOUNT_S
ADD primary key (ledger_account, start_date);
-- SELECT * FROM DS.MD_LEDGER_ACCOUNT_S;
-- TRUNCATE TABLE DS.MD_LEDGER_ACCOUNT_S;
------------------------------------------------------
