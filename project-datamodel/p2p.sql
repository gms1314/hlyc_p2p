/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 10                       */
/* Created on:     2018/5/9 11:19:24                            */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_T_DEBTOR_REFERENCE_T_DEBT_I') then
    alter table T_DEBTOR_RECORD
       delete foreign key FK_T_DEBTOR_REFERENCE_T_DEBT_I
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_T_PRODUC_REFERENCE_T_PRODUC') then
    alter table T_PRODUCTEARNINGRATE
       delete foreign key FK_T_PRODUC_REFERENCE_T_PRODUC
end if;

if exists(select 1 from sys.systable where table_name='INVEST_RECORD_VW' and table_type='VIEW') then
   drop view INVEST_RECORD_VW
end if;

if exists(select 1 from sys.systable where table_name='INVEST_STATISTICS_VW' and table_type='VIEW') then
   drop view INVEST_STATISTICS_VW
end if;

if exists(select 1 from sys.systable where table_name='PRODUCT_DETAIL_ALL_VW' and table_type='VIEW') then
   drop view PRODUCT_DETAIL_ALL_VW
end if;

if exists(select 1 from sys.systable where table_name='PRODUCT_DETAIL_NOSTATUS_VW' and table_type='VIEW') then
   drop view PRODUCT_DETAIL_NOSTATUS_VW
end if;

if exists(select 1 from sys.systable where table_name='PRODUCT_DETAIL_STATUS_NOTEQ_VW' and table_type='VIEW') then
   drop view PRODUCT_DETAIL_STATUS_NOTEQ_VW
end if;

if exists(select 1 from sys.systable where table_name='PRODUCT_PROGRAM_VW' and table_type='VIEW') then
   drop view PRODUCT_PROGRAM_VW
end if;

if exists(select 1 from sys.systable where table_name='PRODUCT_TIME_VW' and table_type='VIEW') then
   drop view PRODUCT_TIME_VW
end if;

if exists(select 1 from sys.systable where table_name='PRODUCT_TOTAL_VW' and table_type='VIEW') then
   drop view PRODUCT_TOTAL_VW
end if;

alter table T_ACCOUNT
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_ACCOUNT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_ACCOUNT
end if;

alter table T_ACCOUNT_LOG
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_ACCOUNT_LOG'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_ACCOUNT_LOG
end if;

alter table T_BANK
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_BANK'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_BANK
end if;

alter table T_BANKCARD
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_BANKCARD'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_BANKCARD
end if;

alter table T_CITY
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_CITY'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_CITY
end if;

alter table T_CLAIMS_TRANSFER
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_CLAIMS_TRANSFER'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_CLAIMS_TRANSFER
end if;

alter table T_DEBTOR_RECORD
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_DEBTOR_RECORD'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_DEBTOR_RECORD
end if;

alter table T_DEBT_INFO
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_DEBT_INFO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_DEBT_INFO
end if;

alter table T_EMPLOYEE
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_EMPLOYEE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_EMPLOYEE
end if;

alter table T_EXPECTED_RETURN
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_EXPECTED_RETURN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_EXPECTED_RETURN
end if;

alter table T_FUNDING_NOT_MATCHED
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_FUNDING_NOT_MATCHED'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_FUNDING_NOT_MATCHED
end if;

alter table T_INVEST_CLAIMS_RECORD
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_INVEST_CLAIMS_RECORD'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_INVEST_CLAIMS_RECORD
end if;

alter table T_MATCHED_RESULT
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_MATCHED_RESULT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_MATCHED_RESULT
end if;

alter table T_PRODUCT
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_PRODUCT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_PRODUCT
end if;

alter table T_PRODUCTEARNINGRATE
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_PRODUCTEARNINGRATE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_PRODUCTEARNINGRATE
end if;

alter table T_PRODUCT_ACCOUNT
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_PRODUCT_ACCOUNT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_PRODUCT_ACCOUNT
end if;

alter table T_PRODUCT_TYPE
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_PRODUCT_TYPE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_PRODUCT_TYPE
end if;

alter table T_STATION_INFORMATION
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_STATION_INFORMATION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_STATION_INFORMATION
end if;

alter table T_SYSTEM_STAFF
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_SYSTEM_STAFF'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_SYSTEM_STAFF
end if;

alter table T_UNDERTAKER
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_UNDERTAKER'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_UNDERTAKER
end if;

alter table T_USER
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_USER'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_USER
end if;

alter table T_USER_LOAN
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_USER_LOAN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_USER_LOAN
end if;

alter table T_WEIGHRULE
   delete primary key;

if exists(
   select 1 from sys.systable 
   where table_name='T_WEIGHRULE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table T_WEIGHRULE
end if;

/*==============================================================*/
/* Table: T_ACCOUNT                                             */
/*==============================================================*/
create table T_ACCOUNT 
(
   T_ID                 NUMBER(10)                     not null,
   T_ADD_CAPTIAL_TATAL  FLOAT,
   T_BALANCE            FLOAT,
   T_CAPITAL_TOTAL      FLOAT,
   T_FROZEN             FLOAT,
   T_INTERESTA          FLOAT,
   T_INTEREST_TOTAL     FLOAT,
   T_INVERSTMENTA       FLOAT,
   T_INVERSTMENTW       FLOAT,
   T_RECYCLING_INTEREST FLOAT,
   T_TOTAL              FLOAT,
   T_UAPPLY_EXTRACT_MONEY FLOAT,
   T_USERID             NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_ACCOUNT is 
'用户账户表';

comment on column T_ACCOUNT.T_ID is 
'主键
';

comment on column T_ACCOUNT.T_ADD_CAPTIAL_TATAL is 
'月投总额';

comment on column T_ACCOUNT.T_BALANCE is 
'账户可用余额';

comment on column T_ACCOUNT.T_CAPITAL_TOTAL is 
'月乘总额';

comment on column T_ACCOUNT.T_FROZEN is 
'账户总计冻结总额';

comment on column T_ACCOUNT.T_INTERESTA is 
'已赚取利息';

comment on column T_ACCOUNT.T_INTEREST_TOTAL is 
'总计待收利息';

comment on column T_ACCOUNT.T_INVERSTMENTA is 
'已投资总额';

comment on column T_ACCOUNT.T_INVERSTMENTW is 
'总计待收本金';

comment on column T_ACCOUNT.T_RECYCLING_INTEREST is 
'月取总额';

comment on column T_ACCOUNT.T_TOTAL is 
'账户总额';

comment on column T_ACCOUNT.T_UAPPLY_EXTRACT_MONEY is 
'申请提现金额';

comment on column T_ACCOUNT.T_USERID is 
'用户ID';

alter table T_ACCOUNT
   add constraint SYS_C0011007 primary key (T_ID);

/*==============================================================*/
/* Table: T_ACCOUNT_LOG                                         */
/*==============================================================*/
create table T_ACCOUNT_LOG 
(
   A_ID                 NUMBER(10)                     not null,
   A_AFTER_TRADING_MONEY FLOAT,
   A_AMOUNT             FLOAT,
   A_BEFORE_TRADING_MONEY FLOAT,
   A_CURRENT_PERIOD     NUMBER(10),
   A_DATE               TIMESTAMP,
   A_DESCREPTION        VARCHAR2(255 char),
   A_MAIN_ACCOUNT_ID    NUMBER(10),
   A_RECEIVE_OR_PAY     NUMBER(10),
   A_TRANSFER_SERIAL_NO VARCHAR2(255 char),
   A_TRANSFER_STATUS    NUMBER(10),
   A_TYPE               NUMBER(10),
   A_USER_ID            NUMBER(10),
   P_ID                 NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_ACCOUNT_LOG is 
'交易流水记录表';

comment on column T_ACCOUNT_LOG.A_ID is 
'主键';

comment on column T_ACCOUNT_LOG.A_AFTER_TRADING_MONEY is 
'交易后金额';

comment on column T_ACCOUNT_LOG.A_AMOUNT is 
'金额';

comment on column T_ACCOUNT_LOG.A_BEFORE_TRADING_MONEY is 
'交易前金额';

comment on column T_ACCOUNT_LOG.A_CURRENT_PERIOD is 
'当前期';

comment on column T_ACCOUNT_LOG.A_DATE is 
'交易时间';

comment on column T_ACCOUNT_LOG.A_DESCREPTION is 
'交易详情';

comment on column T_ACCOUNT_LOG.A_MAIN_ACCOUNT_ID is 
'主账户id';

comment on column T_ACCOUNT_LOG.A_RECEIVE_OR_PAY is 
'收付';

comment on column T_ACCOUNT_LOG.A_TRANSFER_SERIAL_NO is 
'交易流水号';

comment on column T_ACCOUNT_LOG.A_TRANSFER_STATUS is 
'交易状态';

comment on column T_ACCOUNT_LOG.A_TYPE is 
'交易类型';

comment on column T_ACCOUNT_LOG.A_USER_ID is 
'用户id';

comment on column T_ACCOUNT_LOG.P_ID is 
'投资记录ID';

alter table T_ACCOUNT_LOG
   add constraint SYS_C0010949 primary key (A_ID);

/*==============================================================*/
/* Table: T_BANK                                                */
/*==============================================================*/
create table T_BANK 
(
   T_ID                 NUMBER(10)                     not null,
   T_STATUS             NUMBER(10),
   T_DESC               VARCHAR2(255 char),
   T_LEVEL              NUMBER(10),
   T_NAME               VARCHAR2(255 char),
   T_NUMBER             VARCHAR2(255 char),
   T_CITY_CODE          VARCHAR2(255 char)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_BANK is 
'银行信息字典表';

comment on column T_BANK.T_ID is 
'主键';

comment on column T_BANK.T_STATUS is 
'是否停用该行（0停；1启用）';

comment on column T_BANK.T_DESC is 
'说明';

comment on column T_BANK.T_LEVEL is 
'城市级别';

comment on column T_BANK.T_NAME is 
'银行名称';

comment on column T_BANK.T_NUMBER is 
'银行编号';

comment on column T_BANK.T_CITY_CODE is 
'城市编号';

alter table T_BANK
   add constraint SYS_C0011442 primary key (T_ID);

/*==============================================================*/
/* Table: T_BANKCARD                                            */
/*==============================================================*/
create table T_BANKCARD 
(
   T_ID                 NUMBER(10)                     not null,
   T_BANK_BRANCH        VARCHAR2(255 char),
   T_NUM                VARCHAR2(255 char),
   T_BANK_ID            NUMBER(10),
   T_CITY_ID            NUMBER(10),
   T_BANK               VARCHAR2(255 char),
   T_PHONE_NUM          VARCHAR2(255 char),
   T_USER_ID            NUMBER(10),
   T_MONEY              FLOAT
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_BANKCARD is 
'银行卡信息表';

comment on column T_BANKCARD.T_ID is 
'主键';

comment on column T_BANKCARD.T_BANK_BRANCH is 
'银行支行';

comment on column T_BANKCARD.T_NUM is 
'银行卡号';

comment on column T_BANKCARD.T_BANK_ID is 
'银行编号';

comment on column T_BANKCARD.T_CITY_ID is 
'城市id';

comment on column T_BANKCARD.T_BANK is 
'开户行';

comment on column T_BANKCARD.T_PHONE_NUM is 
'绑定的手机号码';

comment on column T_BANKCARD.T_USER_ID is 
'用户ID';

comment on column T_BANKCARD.T_MONEY is 
'金额';

alter table T_BANKCARD
   add constraint SYS_C0011440 primary key (T_ID);

/*==============================================================*/
/* Table: T_CITY                                                */
/*==============================================================*/
create table T_CITY 
(
   T_ID                 NUMBER(10)                     not null,
   T_CITY_AREA_NUM      VARCHAR2(255 char),
   T_CITY_LEVEL         NUMBER(10),
   T_CITY_NAME          VARCHAR2(255 char),
   T_PARENT_CITY_NUM    VARCHAR2(255 char)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_CITY is 
'城市信息字典表';

comment on column T_CITY.T_ID is 
'城市信息字典表主键';

comment on column T_CITY.T_CITY_AREA_NUM is 
'城市编号';

comment on column T_CITY.T_CITY_LEVEL is 
'城市级别 (0：省 ；1：市；2：县)';

comment on column T_CITY.T_CITY_NAME is 
'城市名称';

comment on column T_CITY.T_PARENT_CITY_NUM is 
'父级城市编号';

alter table T_CITY
   add constraint SYS_C0011438 primary key (T_ID);

/*==============================================================*/
/* Table: T_CLAIMS_TRANSFER                                     */
/*==============================================================*/
create table T_CLAIMS_TRANSFER 
(
   C_ID                 NUMBER(10)                     not null,
   C_AUDIT_STATUS       NUMBER(10),
   C_CLAIMS_ID          NUMBER(10),
   C_TRANSFER_MONEY     NUMBER(19,2),
   C_USER_ID            NUMBER(10),
   C_CLAIMS_TYPE        NUMBER(10),
   C_CLAIMS_WEIGHT      NUMBER(10),
   C_IS_LOCKED          NUMBER(10),
   C_TRANSFER_DATE      TIMESTAMP,
   C_TRANSFER_SERIAL_NO VARCHAR2(255 char)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_CLAIMS_TRANSFER is 
'债权转让表';

comment on column T_CLAIMS_TRANSFER.C_ID is 
'主键';

comment on column T_CLAIMS_TRANSFER.C_AUDIT_STATUS is 
'审核状态';

comment on column T_CLAIMS_TRANSFER.C_CLAIMS_ID is 
'债权id';

comment on column T_CLAIMS_TRANSFER.C_TRANSFER_MONEY is 
'债权金额 ';

comment on column T_CLAIMS_TRANSFER.C_USER_ID is 
'债权持有人';

comment on column T_CLAIMS_TRANSFER.C_CLAIMS_TYPE is 
'债权类型 :新借款	129,到期赎回	130,期限内回款	131
债权类型 :新借款	129,到期赎回	130,期限内回款	131';

comment on column T_CLAIMS_TRANSFER.C_CLAIMS_WEIGHT is 
'债权权重';

comment on column T_CLAIMS_TRANSFER.C_IS_LOCKED is 
'是否锁定:11404,锁定中(匹配中);11403,未锁定(未匹配)';

comment on column T_CLAIMS_TRANSFER.C_TRANSFER_DATE is 
'转让时间';

comment on column T_CLAIMS_TRANSFER.C_TRANSFER_SERIAL_NO is 
'转让流水号';

alter table T_CLAIMS_TRANSFER
   add constraint SYS_C0011444 primary key (C_ID);

/*==============================================================*/
/* Table: T_DEBTOR_RECORD                                       */
/*==============================================================*/
create table T_DEBTOR_RECORD 
(
   T_ID                 NUMBER(10)                     not null,
   T_CLAIMS_ID          NUMBER(10),
   T_CURRENT_TERM       NUMBER(10),
   T_ISRETURNED         NUMBER(10),
   T_RECEIVABLE_DATE    TIMESTAMP,
   T_RECEIVEABLE_MONEY  FLOAT,
   T_RECORD_DATE        TIMESTAMP
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_DEBTOR_RECORD is 
'债权还款记录表';

comment on column T_DEBTOR_RECORD.T_ID is 
'主键';

comment on column T_DEBTOR_RECORD.T_CLAIMS_ID is 
'债权ID';

comment on column T_DEBTOR_RECORD.T_CURRENT_TERM is 
'当前还款期';

comment on column T_DEBTOR_RECORD.T_ISRETURNED is 
'是否还款';

comment on column T_DEBTOR_RECORD.T_RECEIVABLE_DATE is 
'应还日期';

comment on column T_DEBTOR_RECORD.T_RECEIVEABLE_MONEY is 
'应还金额';

comment on column T_DEBTOR_RECORD.T_RECORD_DATE is 
'记录日期';

alter table T_DEBTOR_RECORD
   add constraint SYS_C0011690 primary key (T_ID);

/*==============================================================*/
/* Table: T_DEBT_INFO                                           */
/*==============================================================*/
create table T_DEBT_INFO 
(
   D_ID                 NUMBER(10)                     not null,
   D_AVAILABLE_MONEY    FLOAT,
   D_AVAILABLE_PERIOD   NUMBER(10),
   D_BORROWER_ID        NUMBER(10),
   D_CONTRACT_NO        VARCHAR2(255 char),
   D_CREDITOR           VARCHAR2(255 char),
   D_DEBT_MONEY         FLOAT,
   D_DEBT_MONTH_RATE    FLOAT,
   D_DEBT_NO            VARCHAR2(255 char),
   D_DEBT_RANSFER_OUT_DATE TIMESTAMP,
   D_DEBT_STATUS        NUMBER(10),
   D_DEBT_STATUS_NAME   VARCHAR2(255 char),
   D_DEBT_TRANSFERRED_DATE TIMESTAMP,
   D_DEBT_TRANSFERRED_MONEY FLOAT,
   D_DEBT_TRANSFERRED_PERIOD NUMBER(10),
   D_DEBT_TYPE          VARCHAR2(255 char),
   D_DEBT_TYPE_NAME     VARCHAR2(255 char),
   D_DEBT_YEAR_RATE     FLOAT,
   D_DEBTORS_ID         VARCHAR2(255 char),
   D_DEBTORS_NAME       VARCHAR2(255 char),
   D_LOAN_END_DATE      TIMESTAMP,
   D_LOAN_PERIOD        NUMBER(10),
   D_LOAN_PURPOSE       VARCHAR2(255 char),
   D_LOAN_START_DATE    TIMESTAMP,
   D_LOAN_TYPE          VARCHAR2(255 char),
   D_MATCHED_MONEY      FLOAT,
   D_MATCHED_STATUS     NUMBER(10),
   D_MATCHED_STATUS_NAME VARCHAR2(255 char),
   D_REPAYMEN_DATE      VARCHAR2(255 char),
   D_REPAYMEN_MONEY     FLOAT,
   D_REPAYMENT_STYLE    NUMBER(10),
   D_REPAYMENT_STYLE_NAME VARCHAR2(255 char)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_DEBT_INFO is 
'债权信息表';

comment on column T_DEBT_INFO.D_ID is 
'主键';

comment on column T_DEBT_INFO.D_AVAILABLE_MONEY is 
'可用金额';

comment on column T_DEBT_INFO.D_AVAILABLE_PERIOD is 
'可用期限';

comment on column T_DEBT_INFO.D_BORROWER_ID is 
'借款人ID';

comment on column T_DEBT_INFO.D_CONTRACT_NO is 
'合同编号';

comment on column T_DEBT_INFO.D_CREDITOR is 
'债权人';

comment on column T_DEBT_INFO.D_DEBT_MONEY is 
'债权金额';

comment on column T_DEBT_INFO.D_DEBT_MONTH_RATE is 
'债权月利率';

comment on column T_DEBT_INFO.D_DEBT_NO is 
'债权编号';

comment on column T_DEBT_INFO.D_DEBT_RANSFER_OUT_DATE is 
'债权转出日期';

comment on column T_DEBT_INFO.D_DEBT_STATUS is 
'债权状态';

comment on column T_DEBT_INFO.D_DEBT_STATUS_NAME is 
'债权状态名字';

comment on column T_DEBT_INFO.D_DEBT_TRANSFERRED_DATE is 
'债权转入日期';

comment on column T_DEBT_INFO.D_DEBT_TRANSFERRED_MONEY is 
'债权转入金额';

comment on column T_DEBT_INFO.D_DEBT_TRANSFERRED_PERIOD is 
'债权转入期限';

comment on column T_DEBT_INFO.D_DEBT_TYPE is 
'标的类型';

comment on column T_DEBT_INFO.D_DEBT_TYPE_NAME is 
'标的类型名称';

comment on column T_DEBT_INFO.D_DEBT_YEAR_RATE is 
'债权年化利率';

comment on column T_DEBT_INFO.D_DEBTORS_ID is 
'债务人身份证号';

comment on column T_DEBT_INFO.D_DEBTORS_NAME is 
'债务人名称';

comment on column T_DEBT_INFO.D_LOAN_END_DATE is 
'原始借款到期日期';

comment on column T_DEBT_INFO.D_LOAN_PERIOD is 
'原始借款期限';

comment on column T_DEBT_INFO.D_LOAN_PURPOSE is 
'借款用途';

comment on column T_DEBT_INFO.D_LOAN_START_DATE is 
'原始借款开始日期';

comment on column T_DEBT_INFO.D_LOAN_TYPE is 
'借款类型';

comment on column T_DEBT_INFO.D_MATCHED_MONEY is 
'已匹配金额';

comment on column T_DEBT_INFO.D_MATCHED_STATUS is 
'匹配状态';

comment on column T_DEBT_INFO.D_MATCHED_STATUS_NAME is 
'匹配状态名称';

comment on column T_DEBT_INFO.D_REPAYMEN_DATE is 
'还款日';

comment on column T_DEBT_INFO.D_REPAYMEN_MONEY is 
'还款金额';

comment on column T_DEBT_INFO.D_REPAYMENT_STYLE is 
'还款方式';

comment on column T_DEBT_INFO.D_REPAYMENT_STYLE_NAME is 
'还款方式名称';

alter table T_DEBT_INFO
   add constraint SYS_C0011651 primary key (D_ID);

/*==============================================================*/
/* Table: T_EMPLOYEE                                            */
/*==============================================================*/
create table T_EMPLOYEE 
(
   E_ID                 NUMBER(10)                     not null,
   E_CREATER            VARCHAR2(255 char),
   E_CREATER_DATE       TIMESTAMP,
   E_EMAIL              VARCHAR2(255 char),
   E_EMPLOYEE_ID        VARCHAR2(255 char),
   E_EMPLOYEE_NAME      VARCHAR2(255 char),
   E_HOME_TELEPHONE     VARCHAR2(255 char),
   E_IS_DELETED         NUMBER(10)                     default '0',
   E_JOB                VARCHAR2(255 char),
   E_MOBILE_PHONE       VARCHAR2(255 char),
   E_MODIFIER           VARCHAR2(255 char),
   E_MODIFY_DATE        TIMESTAMP,
   E_OFFICE_TELEPHONE   VARCHAR2(255 char),
   E_ORGNIZATION_ID     NUMBER(10)                     default '0',
   E_REMARK             VARCHAR2(255 char),
   E_SEX                VARCHAR2(255 char),
   E_STATUS             NUMBER(10)                     default '0',
   E_SYSTEM_BELONG      VARCHAR2(255 char),
   E_SYSTEM_STAFF_ID    NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_EMPLOYEE is 
'P2P平台的职员表';

comment on column T_EMPLOYEE.E_ID is 
'主键';

comment on column T_EMPLOYEE.E_CREATER is 
'创建人';

comment on column T_EMPLOYEE.E_CREATER_DATE is 
'创建日期';

comment on column T_EMPLOYEE.E_EMAIL is 
'邮箱';

comment on column T_EMPLOYEE.E_EMPLOYEE_ID is 
'员工编号';

comment on column T_EMPLOYEE.E_EMPLOYEE_NAME is 
'员工名称';

comment on column T_EMPLOYEE.E_HOME_TELEPHONE is 
'家庭电话';

comment on column T_EMPLOYEE.E_IS_DELETED is 
'删除状态';

comment on column T_EMPLOYEE.E_JOB is 
'职务';

comment on column T_EMPLOYEE.E_MOBILE_PHONE is 
'手机号码';

comment on column T_EMPLOYEE.E_MODIFIER is 
'修改人';

comment on column T_EMPLOYEE.E_MODIFY_DATE is 
'修改日期';

comment on column T_EMPLOYEE.E_OFFICE_TELEPHONE is 
'办公电话';

comment on column T_EMPLOYEE.E_ORGNIZATION_ID is 
'机构部门';

comment on column T_EMPLOYEE.E_REMARK is 
'备注';

comment on column T_EMPLOYEE.E_SEX is 
'性别';

comment on column T_EMPLOYEE.E_STATUS is 
'状态';

comment on column T_EMPLOYEE.E_SYSTEM_BELONG is 
'系统所属';

comment on column T_EMPLOYEE.E_SYSTEM_STAFF_ID is 
'员工ID';

alter table T_EMPLOYEE
   add constraint SYS_C0011450 primary key (E_ID);

/*==============================================================*/
/* Table: T_EXPECTED_RETURN                                     */
/*==============================================================*/
create table T_EXPECTED_RETURN 
(
   T_ID                 NUMBER(10)                     not null,
   T_CREATE_DATE        TIMESTAMP,
   T_EXPECTED_DATE      VARCHAR2(255 char),
   T_EXPECTED_MONEY     FLOAT,
   T_RID                NUMBER(10),
   T_PID                NUMBER(10),
   T_UID                NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_EXPECTED_RETURN is 
'预期收益记录表';

comment on column T_EXPECTED_RETURN.T_ID is 
'主键';

comment on column T_EXPECTED_RETURN.T_CREATE_DATE is 
'创建日期';

comment on column T_EXPECTED_RETURN.T_EXPECTED_DATE is 
'收益日期';

comment on column T_EXPECTED_RETURN.T_EXPECTED_MONEY is 
'收益金额';

comment on column T_EXPECTED_RETURN.T_RID is 
'投资记录ID';

comment on column T_EXPECTED_RETURN.T_PID is 
'产品ID';

comment on column T_EXPECTED_RETURN.T_UID is 
'用户ID';

alter table T_EXPECTED_RETURN
   add constraint SYS_C0011363 primary key (T_ID);

/*==============================================================*/
/* Table: T_FUNDING_NOT_MATCHED                                 */
/*==============================================================*/
create table T_FUNDING_NOT_MATCHED 
(
   F_ID                 NUMBER(10)                     not null,
   F_CREATE_DATE        TIMESTAMP,
   F_FOUNDING_TYPE      NUMBER(10),
   F_FOUNDING_WEIGHT    NUMBER(10),
   F_INVEST_RECORD_ID   NUMBER(10),
   F_IS_LOCKED          NUMBER(10),
   F_NOT_MATCHED_MONEY  FLOAT
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_FUNDING_NOT_MATCHED is 
'待匹配资金记录表';

comment on column T_FUNDING_NOT_MATCHED.F_ID is 
'主键';

comment on column T_FUNDING_NOT_MATCHED.F_CREATE_DATE is 
'创建时间';

comment on column T_FUNDING_NOT_MATCHED.F_FOUNDING_TYPE is 
'资金类型';

comment on column T_FUNDING_NOT_MATCHED.F_FOUNDING_WEIGHT is 
'资金';

comment on column T_FUNDING_NOT_MATCHED.F_INVEST_RECORD_ID is 
'投资记录ID';

comment on column T_FUNDING_NOT_MATCHED.F_IS_LOCKED is 
'是否锁定';

comment on column T_FUNDING_NOT_MATCHED.F_NOT_MATCHED_MONEY is 
'待匹配金额';

alter table T_FUNDING_NOT_MATCHED
   add constraint SYS_C0011375 primary key (F_ID);

/*==============================================================*/
/* Table: T_INVEST_CLAIMS_RECORD                                */
/*==============================================================*/
create table T_INVEST_CLAIMS_RECORD 
(
   I_ID                 NUMBER(10)                     not null,
   I_CONFIRM_DATE       TIMESTAMP,
   I_CLAIMS_ID          NUMBER(10),
   I_DEBT_TYPE          NUMBER(10),
   I_INVEST_TYPE        NUMBER(10),
   I_INVEST_NO          NUMBER(10),
   I_IS_CONFIRMED       NUMBER(10),
   I_IS_CLEARED         NUMBER(10),
   I_MATCHED_DATE       TIMESTAMP,
   I_BID_MONEY          NUMBER(19,2),
   I_TOTAL_MONEY        NUMBER(19,2),
   I_TRANSFER_SERIAL_NO VARCHAR2(255 char),
   I_USER_ID            NUMBER(10)
)
pctfree 10
initrans 1
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_INVEST_CLAIMS_RECORD is 
'债权匹配记录表';

comment on column T_INVEST_CLAIMS_RECORD.I_ID is 
'主键';

comment on column T_INVEST_CLAIMS_RECORD.I_CONFIRM_DATE is 
'购买日期（匹配日期）';

comment on column T_INVEST_CLAIMS_RECORD.I_CLAIMS_ID is 
'债权ID';

comment on column T_INVEST_CLAIMS_RECORD.I_DEBT_TYPE is 
'债权类型';

comment on column T_INVEST_CLAIMS_RECORD.I_INVEST_TYPE is 
'资金类型';

comment on column T_INVEST_CLAIMS_RECORD.I_INVEST_NO is 
'投资记录主键';

comment on column T_INVEST_CLAIMS_RECORD.I_IS_CONFIRMED is 
'是否确认,0:未确认,1:已确认';

comment on column T_INVEST_CLAIMS_RECORD.I_IS_CLEARED is 
'是否清算过,0:未清算,1:已清算';

comment on column T_INVEST_CLAIMS_RECORD.I_MATCHED_DATE is 
'匹配上的日期';

comment on column T_INVEST_CLAIMS_RECORD.I_BID_MONEY is 
'购买金额（匹配金额）';

comment on column T_INVEST_CLAIMS_RECORD.I_TOTAL_MONEY is 
'已经匹配资金或债权总额:sum(investID)或sum(debtID)';

comment on column T_INVEST_CLAIMS_RECORD.I_TRANSFER_SERIAL_NO is 
'交易流水号';

comment on column T_INVEST_CLAIMS_RECORD.I_USER_ID is 
'用户ID';

alter table T_INVEST_CLAIMS_RECORD
   add constraint SYS_C0011452 primary key (I_ID);

/*==============================================================*/
/* Table: T_MATCHED_RESULT                                      */
/*==============================================================*/
create table T_MATCHED_RESULT 
(
   I_ID                 NUMBER(10)                     not null,
   I_CONFIRM_DATE       TIMESTAMP,
   I_CLAIMS_ID          NUMBER(10),
   I_DEBT_TYPE          NUMBER(10),
   I_INVEST_TYPE        NUMBER(10),
   I_INVEST_NO          NUMBER(10),
   I_IS_CONFIRMED       NUMBER(10),
   I_IS_EXECUTED        NUMBER(10),
   I_MATCHED_DATE       TIMESTAMP,
   I_BID_MONEY          NUMBER(19,2),
   I_TRANSFER_SERIAL_NO VARCHAR2(255 char),
   I_USER_ID            NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_MATCHED_RESULT is 
'匹配结果表';

comment on column T_MATCHED_RESULT.I_ID is 
'主键';

comment on column T_MATCHED_RESULT.I_CONFIRM_DATE is 
'购买日期（匹配日期）';

comment on column T_MATCHED_RESULT.I_CLAIMS_ID is 
'债权ID';

comment on column T_MATCHED_RESULT.I_DEBT_TYPE is 
'债权类型';

comment on column T_MATCHED_RESULT.I_INVEST_TYPE is 
'资金类型';

comment on column T_MATCHED_RESULT.I_INVEST_NO is 
'投资记录主键';

comment on column T_MATCHED_RESULT.I_IS_CONFIRMED is 
'是否确认,11702:未确认,11701:已确认';

comment on column T_MATCHED_RESULT.I_IS_EXECUTED is 
'是否清算过,11802:未清算,11801:已清算';

comment on column T_MATCHED_RESULT.I_MATCHED_DATE is 
'匹配上的日期';

comment on column T_MATCHED_RESULT.I_BID_MONEY is 
'购买金额（匹配金额）';

comment on column T_MATCHED_RESULT.I_TRANSFER_SERIAL_NO is 
'交易流水号';

comment on column T_MATCHED_RESULT.I_USER_ID is 
'用户ID';

alter table T_MATCHED_RESULT
   add constraint SYS_C0011454 primary key (I_ID);

/*==============================================================*/
/* Table: T_PRODUCT                                             */
/*==============================================================*/
create table T_PRODUCT 
(
   T_PID                NUMBER(19)                     not null,
   T_CLOSE_PERIOD       NUMBER(10),
   T_EARLY_REDEPTION_TYPE NUMBER(10),
   T_EARTING_TYPE       NUMBER(10),
   T_INVEST_RULE        FLOAT,
   T_LOWER_LIMIT        NUMBER(10),
   T_LOWER_INVEST       FLOAT,
   T_PRONUM             VARCHAR2(255 char),
   T_PROTYPE_ID         NUMBER(10),
   T_UPPER_INVEST       FLOAT,
   T_PRODUCT_NAME       VARCHAR2(255 char),
   T_STATUS             NUMBER(10),
   T_UPPER_LIMIT        NUMBER(10),
   T_RETURN_MONEY       NUMBER(10),
   T_ALLOW_TRANSFER     NUMBER(10)                     default '0',
   T_IS_REPEAT_INVEST   NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_PRODUCT is 
'理财产品表';

comment on column T_PRODUCT.T_PID is 
'主键';

comment on column T_PRODUCT.T_CLOSE_PERIOD is 
'转让封闭期';

comment on column T_PRODUCT.T_EARLY_REDEPTION_TYPE is 
'提前赎回类型';

comment on column T_PRODUCT.T_EARTING_TYPE is 
'收益利率类型（134：年利率 ，135：月利率）';

comment on column T_PRODUCT.T_INVEST_RULE is 
'数量规则（投资金额按规则数的整倍数进行投资）';

comment on column T_PRODUCT.T_LOWER_LIMIT is 
'产品最低期限';

comment on column T_PRODUCT.T_LOWER_INVEST is 
'产品起投金额';

comment on column T_PRODUCT.T_PRONUM is 
'产品编号';

comment on column T_PRODUCT.T_PROTYPE_ID is 
'产品类型id';

comment on column T_PRODUCT.T_UPPER_INVEST is 
'产品投资上限';

comment on column T_PRODUCT.T_PRODUCT_NAME is 
'产品名称';

comment on column T_PRODUCT.T_STATUS is 
'状态(0:表示正常；1：表示停用)';

comment on column T_PRODUCT.T_UPPER_LIMIT is 
'产品最大期限';

comment on column T_PRODUCT.T_RETURN_MONEY is 
'回款方式（109：表示一次性回款 ，110：每月提取，到期退出）';

comment on column T_PRODUCT.T_ALLOW_TRANSFER is 
'是否可转让';

comment on column T_PRODUCT.T_IS_REPEAT_INVEST is 
'是否复投';

alter table T_PRODUCT
   add constraint SYS_C0010801 primary key (T_PID);

/*==============================================================*/
/* Table: T_PRODUCTEARNINGRATE                                  */
/*==============================================================*/
create table T_PRODUCTEARNINGRATE 
(
   T_ID                 NUMBER(10)                     not null,
   T_INCOMERATE         FLOAT,
   T_MONTH              NUMBER(10),
   T_PID                NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_PRODUCTEARNINGRATE is 
'理财产品利率表';

comment on column T_PRODUCTEARNINGRATE.T_ID is 
'主键';

comment on column T_PRODUCTEARNINGRATE.T_INCOMERATE is 
'利率';

comment on column T_PRODUCTEARNINGRATE.T_MONTH is 
'期数';

comment on column T_PRODUCTEARNINGRATE.T_PID is 
'产品ID';

alter table T_PRODUCTEARNINGRATE
   add constraint SYS_C0010803 primary key (T_ID);

/*==============================================================*/
/* Table: T_PRODUCT_ACCOUNT                                     */
/*==============================================================*/
create table T_PRODUCT_ACCOUNT 
(
   P_ID                 NUMBER(19)                     not null,
   A_CURRENT_PERIOD     NUMBER(10),
   P_ADV_REDEMPTION     FLOAT,
   P_AMOUNT             FLOAT,
   P_AVA_BAL            FLOAT,
   P_BEGIN_DATE         TIMESTAMP,
   P_CURRENT_MONTH      NUMBER(10),
   P_CUR_REAL_TOT_MON   FLOAT,
   P_DATE               TIMESTAMP,
   P_DAYS               TIMESTAMP,
   P_DEADLINE           NUMBER,
   P_DEADLINE_AS_DAY    NUMBER(10),
   P_DEADLINE_COUNT     NUMBER(10),
   P_DEADLINES          NUMBER(10),
   P_DEDUCT_INTEREST    FLOAT,
   P_EARNED_INTER       FLOAT,
   P_EARNINGS           FLOAT,
   P_EAR_IS_FINISHED    NUMBER(10),
   P_EARNINGS_TYPE      NUMBER(10),
   P_END_INV_TOT_MON    FLOAT,
   P_EXP_ANNUAL_INCOME  FLOAT,
   P_FROZEN_MONEY       FLOAT,
   P_INTEREST_END_DATE  TIMESTAMP,
   P_INTEREST_START_DATE TIMESTAMP,
   P_MATCH_DATE         TIMESTAMP,
   P_MAY_TAKE           FLOAT,
   P_MAY_TAKE_COUNT     NUMBER(10),
   P_MONTH_INTEREST     FLOAT,
   P_MONTHLY_DEPOSIT    FLOAT,
   P_MONTHLY_DEPOSIT_COUNT NUMBER(10),
   P_MONTHLY_EXT_INTEREST FLOAT,
   P_NOT_INV_MON        FLOAT,
   P_PRODUCT_NAME       VARCHAR2(255 char),
   P_PRO_TYPE           NUMBER(10),
   P_PRO_EARNINGS       FLOAT,
   P_REDEEM_DATE        TIMESTAMP,
   P_REMARK             VARCHAR2(255 char),
   P_SERIAL_NO          VARCHAR2(255 char),
   P_STATUS             NUMBER(10),
   P_SYS_PAY_DATE       NUMBER(10),
   P_TAKE_MONTH         FLOAT,
   P_TAKE_MONTH_COUNT   NUMBER(10),
   P_TOTAL              NUMBER(10),
   P_TOTAL_AS_DAY       NUMBER(10),
   P_U_ID               NUMBER(19),
   SUM_AVABAL_FROZENMONEY NUMBER(10),
   U_USER_NAME          VARCHAR2(255 char),
   P_PRODUCT_ID         NUMBER(19),
   P_END_DATE           TIMESTAMP,
   INVESTTOTAL          FLOAT,
   P_IS_REPEAT_INVEST   NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_PRODUCT_ACCOUNT is 
'用户投资记录表';

comment on column T_PRODUCT_ACCOUNT.P_ID is 
'主键';

comment on column T_PRODUCT_ACCOUNT.A_CURRENT_PERIOD is 
'当前期（账户资金日志表）';

comment on column T_PRODUCT_ACCOUNT.P_ADV_REDEMPTION is 
'提前赎回利率';

comment on column T_PRODUCT_ACCOUNT.P_AMOUNT is 
'金额';

comment on column T_PRODUCT_ACCOUNT.P_AVA_BAL is 
'可用余额';

comment on column T_PRODUCT_ACCOUNT.P_BEGIN_DATE is 
'加入日期';

comment on column T_PRODUCT_ACCOUNT.P_CURRENT_MONTH is 
'当前期（用户购买产品记录表）';

comment on column T_PRODUCT_ACCOUNT.P_CUR_REAL_TOT_MON is 
'当前期实回总本息';

comment on column T_PRODUCT_ACCOUNT.P_DATE is 
'系统时间';

comment on column T_PRODUCT_ACCOUNT.P_DEADLINE is 
'投资期限';

comment on column T_PRODUCT_ACCOUNT.P_DEADLINE_AS_DAY is 
'投资天数';

comment on column T_PRODUCT_ACCOUNT.P_DEADLINE_COUNT is 
'统计';

comment on column T_PRODUCT_ACCOUNT.P_DEADLINES is 
'选择期限';

comment on column T_PRODUCT_ACCOUNT.P_DEDUCT_INTEREST is 
'扣去利息';

comment on column T_PRODUCT_ACCOUNT.P_EARNED_INTER is 
'已赚取利息';

comment on column T_PRODUCT_ACCOUNT.P_EARNINGS is 
'收益率';

comment on column T_PRODUCT_ACCOUNT.P_EAR_IS_FINISHED is 
'收益是否完成';

comment on column T_PRODUCT_ACCOUNT.P_EARNINGS_TYPE is 
'收益率类型';

comment on column T_PRODUCT_ACCOUNT.P_END_INV_TOT_MON is 
'到期应回总本息';

comment on column T_PRODUCT_ACCOUNT.P_EXP_ANNUAL_INCOME is 
'预期年化收益';

comment on column T_PRODUCT_ACCOUNT.P_FROZEN_MONEY is 
'冻结金额';

comment on column T_PRODUCT_ACCOUNT.P_INTEREST_END_DATE is 
'结束计息时间';

comment on column T_PRODUCT_ACCOUNT.P_INTEREST_START_DATE is 
'开始计息时间';

comment on column T_PRODUCT_ACCOUNT.P_MATCH_DATE is 
'匹配日期';

comment on column T_PRODUCT_ACCOUNT.P_MAY_TAKE is 
'月取';

comment on column T_PRODUCT_ACCOUNT.P_MAY_TAKE_COUNT is 
'月取笔数';

comment on column T_PRODUCT_ACCOUNT.P_MONTH_INTEREST is 
'每月盈取利息';

comment on column T_PRODUCT_ACCOUNT.P_MONTHLY_DEPOSIT is 
'月存';

comment on column T_PRODUCT_ACCOUNT.P_MONTHLY_DEPOSIT_COUNT is 
'月存笔数';

comment on column T_PRODUCT_ACCOUNT.P_MONTHLY_EXT_INTEREST is 
'每月提取利息';

comment on column T_PRODUCT_ACCOUNT.P_NOT_INV_MON is 
'未投资金额';

comment on column T_PRODUCT_ACCOUNT.P_PRODUCT_NAME is 
'产品名称';

comment on column T_PRODUCT_ACCOUNT.P_PRO_TYPE is 
'产品类型';

comment on column T_PRODUCT_ACCOUNT.P_PRO_EARNINGS is 
'预期收益';

comment on column T_PRODUCT_ACCOUNT.P_REDEEM_DATE is 
'赎回日期';

comment on column T_PRODUCT_ACCOUNT.P_REMARK is 
'备注';

comment on column T_PRODUCT_ACCOUNT.P_SERIAL_NO is 
'投资编号';

comment on column T_PRODUCT_ACCOUNT.P_STATUS is 
'状态';

comment on column T_PRODUCT_ACCOUNT.P_SYS_PAY_DATE is 
'每月回款日';

comment on column T_PRODUCT_ACCOUNT.P_TAKE_MONTH is 
'月乘';

comment on column T_PRODUCT_ACCOUNT.P_TAKE_MONTH_COUNT is 
'月乘笔数';

comment on column T_PRODUCT_ACCOUNT.P_TOTAL is 
'总计';

comment on column T_PRODUCT_ACCOUNT.P_TOTAL_AS_DAY is 
'总天数';

comment on column T_PRODUCT_ACCOUNT.P_U_ID is 
'用户id';

comment on column T_PRODUCT_ACCOUNT.SUM_AVABAL_FROZENMONEY is 
'SUM(可用余额+冻结金额)';

comment on column T_PRODUCT_ACCOUNT.U_USER_NAME is 
'用户名';

comment on column T_PRODUCT_ACCOUNT.P_PRODUCT_ID is 
'产品id';

comment on column T_PRODUCT_ACCOUNT.P_END_DATE is 
'到期日期';

alter table T_PRODUCT_ACCOUNT
   add constraint SYS_C0010926 primary key (P_ID);

/*==============================================================*/
/* Table: T_PRODUCT_TYPE                                        */
/*==============================================================*/
create table T_PRODUCT_TYPE 
(
   T_PRO_TYPE_ID        NUMBER(10)                     not null,
   T_CREATE_DATE        TIMESTAMP,
   T_CREDATOR           NUMBER(10),
   T_IS_DELETE          NUMBER(10),
   T_MODIFIER           NUMBER(10),
   T_MODIFY_DATE        TIMESTAMP,
   T_TYPE_NAME          VARCHAR2(255 char)
)
pctfree 10
initrans 1
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_PRODUCT_TYPE is 
'产品类型表';

comment on column T_PRODUCT_TYPE.T_PRO_TYPE_ID is 
'主键';

comment on column T_PRODUCT_TYPE.T_CREATE_DATE is 
'创建日期';

comment on column T_PRODUCT_TYPE.T_CREDATOR is 
'创建人';

comment on column T_PRODUCT_TYPE.T_IS_DELETE is 
'是否删除';

comment on column T_PRODUCT_TYPE.T_MODIFIER is 
'修改人';

comment on column T_PRODUCT_TYPE.T_MODIFY_DATE is 
'修改日期';

comment on column T_PRODUCT_TYPE.T_TYPE_NAME is 
'类型名称';

alter table T_PRODUCT_TYPE
   add constraint SYS_C0011767 primary key (T_PRO_TYPE_ID);

/*==============================================================*/
/* Table: T_STATION_INFORMATION                                 */
/*==============================================================*/
create table T_STATION_INFORMATION 
(
   S_ID                 NUMBER(10)                     not null,
   S_MESSAGE_CONTENT    VARCHAR2(255 char),
   S_MESSAGE_STATE      NUMBER(10),
   S_INFORMATION_TYPE   NUMBER(10),
   S_RECEIVE_USER_ID    NUMBER(10),
   S_SYSTEM_TIME        VARCHAR2(255 char)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_STATION_INFORMATION is 
'用户站内消息表';

comment on column T_STATION_INFORMATION.S_ID is 
'主键';

comment on column T_STATION_INFORMATION.S_MESSAGE_CONTENT is 
'消息内容';

comment on column T_STATION_INFORMATION.S_MESSAGE_STATE is 
'消息状态';

comment on column T_STATION_INFORMATION.S_INFORMATION_TYPE is 
'消息类型';

comment on column T_STATION_INFORMATION.S_RECEIVE_USER_ID is 
'用户ID';

comment on column T_STATION_INFORMATION.S_SYSTEM_TIME is 
'发送时间';

alter table T_STATION_INFORMATION
   add constraint SYS_C0010947 primary key (S_ID);

/*==============================================================*/
/* Table: T_SYSTEM_STAFF                                        */
/*==============================================================*/
create table T_SYSTEM_STAFF 
(
   M_ID                 NUMBER(19)                     not null,
   T_CREATEDATE         VARCHAR2(255 char),
   T_CREATOR            VARCHAR2(255 char),
   T_ISDELETED          NUMBER(10),
   T_MODIFIER           VARCHAR2(255 char),
   T_MODIFYDATE         VARCHAR2(255 char),
   T_PASSWORD           VARCHAR2(255 char),
   T_STATUS             NUMBER(10),
   T_USERNAME           VARCHAR2(255 char)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_SYSTEM_STAFF is 
'后台管理用户表';

comment on column T_SYSTEM_STAFF.M_ID is 
'主键';

comment on column T_SYSTEM_STAFF.T_CREATEDATE is 
'创建日期';

comment on column T_SYSTEM_STAFF.T_CREATOR is 
'创建人';

comment on column T_SYSTEM_STAFF.T_ISDELETED is 
'是否删除';

comment on column T_SYSTEM_STAFF.T_MODIFIER is 
'修改人';

comment on column T_SYSTEM_STAFF.T_MODIFYDATE is 
'修改日期';

comment on column T_SYSTEM_STAFF.T_PASSWORD is 
'密码';

comment on column T_SYSTEM_STAFF.T_STATUS is 
'状态';

comment on column T_SYSTEM_STAFF.T_USERNAME is 
'用户名';

alter table T_SYSTEM_STAFF
   add constraint SYS_C0011609 primary key (M_ID);

/*==============================================================*/
/* Table: T_UNDERTAKER                                          */
/*==============================================================*/
create table T_UNDERTAKER 
(
   T_ID                 NUMBER(10)                     not null,
   T_COST               VARCHAR2(255 char),
   T_TYPE               NUMBER(10),
   T_UNDERTAKER         NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_UNDERTAKER is 
'用户提现手续费设置表';

comment on column T_UNDERTAKER.T_ID is 
'主键';

comment on column T_UNDERTAKER.T_COST is 
'手续费';

comment on column T_UNDERTAKER.T_TYPE is 
'0 充值; 1提现';

comment on column T_UNDERTAKER.T_UNDERTAKER is 
'承担者：1表示用户承担，0表示平台承担';

alter table T_UNDERTAKER
   add constraint SYS_C0012019 primary key (T_ID);

/*==============================================================*/
/* Table: T_USER                                                */
/*==============================================================*/
create table T_USER 
(
   T_ID                 NUMBER(10)                     not null,
   T_EMAIL              VARCHAR2(255 char),
   T_EMAIL_STATUS       NUMBER(10),
   T_IDENTITY           VARCHAR2(255 char),
   T_INVITEID           VARCHAR2(255 char),
   T_IP                 VARCHAR2(255 char),
   T_LOGIN_TIME         TIMESTAMP,
   T_ONLOCK             NUMBER(10),
   T_PASSWORD           VARCHAR2(255 char),
   T_PAY_PASSWORD       VARCHAR2(255 char),
   T_PAY_PWD_STATUS     NUMBER(10),
   T_PHONE              VARCHAR2(255 char),
   T_PHONE_STATUS       NUMBER(10),
   T_RANDOM_CODE        VARCHAR2(255 char),
   T_REALNAME           VARCHAR2(255 char),
   T_REALNAME_STATUS    NUMBER(10),
   T_REGESTER_TIME      TIMESTAMP,
   T_REMARK             VARCHAR2(255 char),
   T_SUM_FRIEND         VARCHAR2(255 char),
   T_USER_SECURE        NUMBER(10)                     default '0',
   T_USERTYPE           NUMBER(10),
   T_USERNAME           VARCHAR2(255 char)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_USER is 
'P2P平台客户表';

comment on column T_USER.T_ID is 
'主键';

comment on column T_USER.T_EMAIL is 
'邮箱';

comment on column T_USER.T_EMAIL_STATUS is 
'邮箱验证状态';

comment on column T_USER.T_IDENTITY is 
'身份证号';

comment on column T_USER.T_INVITEID is 
'激活码     ';

comment on column T_USER.T_IP is 
'IP地址';

comment on column T_USER.T_LOGIN_TIME is 
'登录时间';

comment on column T_USER.T_ONLOCK is 
'是否锁定';

comment on column T_USER.T_PASSWORD is 
'登录密码';

comment on column T_USER.T_PAY_PASSWORD is 
'支付密码';

comment on column T_USER.T_PAY_PWD_STATUS is 
'支付密码状态';

comment on column T_USER.T_PHONE is 
'手机号';

comment on column T_USER.T_PHONE_STATUS is 
'手机验证状态';

comment on column T_USER.T_RANDOM_CODE is 
'随机激活码';

comment on column T_USER.T_REALNAME is 
'真实姓名';

comment on column T_USER.T_REALNAME_STATUS is 
'实名认证状态';

comment on column T_USER.T_REGESTER_TIME is 
'注册时间';

comment on column T_USER.T_REMARK is 
'备注';

comment on column T_USER.T_SUM_FRIEND is 
'好友数量统计';

comment on column T_USER.T_USER_SECURE is 
'安全等级';

comment on column T_USER.T_USERTYPE is 
'类型     0投资人   1 借款人';

comment on column T_USER.T_USERNAME is 
'用户名';

alter table T_USER
   add constraint SYS_C0010805 primary key (T_ID);

/*==============================================================*/
/* Table: T_USER_LOAN                                           */
/*==============================================================*/
create table T_USER_LOAN 
(
   T_ID                 NUMBER(10)                     not null,
   T_ADDRESS            VARCHAR2(255 char),
   T_APPLY_DATE         TIMESTAMP,
   T_CITY               VARCHAR2(255 char),
   T_COUNTY             VARCHAR2(255 char),
   T_LOAN_MONEY         FLOAT,
   T_LOAN_NAME          VARCHAR2(255 char),
   T_PHONE              VARCHAR2(255 char),
   T_PROVINCE           VARCHAR2(255 char),
   T_SEX                NUMBER(10),
   T_UID                NUMBER(10)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_USER_LOAN is 
'用户借款信息表';

comment on column T_USER_LOAN.T_ID is 
'主键';

comment on column T_USER_LOAN.T_ADDRESS is 
'地址';

comment on column T_USER_LOAN.T_APPLY_DATE is 
'借款日期';

comment on column T_USER_LOAN.T_CITY is 
'城市';

comment on column T_USER_LOAN.T_COUNTY is 
'区县';

comment on column T_USER_LOAN.T_LOAN_MONEY is 
'借款金额';

comment on column T_USER_LOAN.T_LOAN_NAME is 
'借款人姓名';

comment on column T_USER_LOAN.T_PHONE is 
'手机号';

comment on column T_USER_LOAN.T_PROVINCE is 
'省';

comment on column T_USER_LOAN.T_SEX is 
'性别';

comment on column T_USER_LOAN.T_UID is 
'借款人ID';

alter table T_USER_LOAN
   add constraint SYS_C0011496 primary key (T_ID);

/*==============================================================*/
/* Table: T_WEIGHRULE                                           */
/*==============================================================*/
create table T_WEIGHRULE 
(
   T_ID                 NUMBER(10)                     not null,
   T_SERIALNO           VARCHAR2(255 char)             not null,
   T_ORDER              NUMBER(10)                     not null,
   T_WEIGTHRULE_CLASS   NUMBER(10)                     not null,
   T_WEIGTHRULE_CLASSNAME VARCHAR2(255 char)             not null,
   T_WEIGHRULE_NAME     VARCHAR2(255 char)             not null,
   T_WEIGTH_TYPE        NUMBER(10)                     not null,
   T_WEIGTH_VALUE       NUMBER(10)                     not null
)
pctfree 10
initrans 1
storage
(
    initial 64K
    next 1024K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
nocompress
 monitoring
 noparallel;

comment on table T_WEIGHRULE is 
'匹配权重规则字典表';

comment on column T_WEIGHRULE.T_ID is 
'主键';

comment on column T_WEIGHRULE.T_SERIALNO is 
'类别编号';

comment on column T_WEIGHRULE.T_ORDER is 
'排序';

comment on column T_WEIGHRULE.T_WEIGTHRULE_CLASS is 
'权重类别  资金类 140 债权类 140';

comment on column T_WEIGHRULE.T_WEIGTHRULE_CLASSNAME is 
'权重类别名称';

comment on column T_WEIGHRULE.T_WEIGHRULE_NAME is 
'权重规则类型名称';

comment on column T_WEIGHRULE.T_WEIGTH_TYPE is 
'权重类型';

comment on column T_WEIGHRULE.T_WEIGTH_VALUE is 
'权重值';

alter table T_WEIGHRULE
   add constraint SYS_C0011373 primary key (T_ID);

/*==============================================================*/
/* View: INVEST_RECORD_VW                                       */
/*==============================================================*/
create view INVEST_RECORD_VW  as
SELECT
    pa.p_id,pa.p_u_id,pa.p_serial_no,pa.p_begin_date,
     (case when  pa.p_pro_type=118 then pa.p_amount*p_current_month-p_not_inv_mon
     when pa.p_pro_type=151 then pa.p_amount*pa.p_current_month-pa.p_not_inv_mon
     else pa.p_amount end) as p_amount, pa.p_product_id,  pa.p_pro_type,
     pa.p_exp_annual_income, pa.p_deadlines,
     p.T_PRODUCT_NAME,p.T_IS_REPEAT_INVEST, u.T_USERNAME,
     pa.p_status,pa.p_end_inv_tot_mon,pa.p_cur_real_tot_mon,
     pa.p_earnings,p_current_month,
     p.T_RETURN_MONEY as T_repayment
FROM
      t_Product_Account pa
      left join t_Product p on pa.p_product_id = p.T_PID
      left join T_USER u on pa.p_u_id = u.T_ID;

/*==============================================================*/
/* View: INVEST_STATISTICS_VW                                   */
/*==============================================================*/
create view INVEST_STATISTICS_VW (COUNTV, investTotal, currentMultiRealTotalMoney) as
select count(*) ,sum(pp_amount) investTotal,sum(p_cur_real_tot_mon) as currentMultiRealTotalMoney
from (SELECT pa.*,(case when pa.p_pro_type=118
then pa.p_amount*p_current_month-p_not_inv_mon when p_pro_type=151
then pa.p_amount*pa.p_current_month-pa.p_not_inv_mon else pa.p_amount end) pp_amount
FROM t_Product_Account pa );

/*==============================================================*/
/* View: PRODUCT_DETAIL_ALL_VW                                  */
/*==============================================================*/
create view PRODUCT_DETAIL_ALL_VW  as
select
   pa.p_id,
   pa.p_u_id,
   pa.p_serial_no,
   pa.p_begin_date,
   pa.p_redeem_date,
   (case when  p_pro_type=118 then pa.p_amount*p_current_month-p_not_inv_mon          when p_pro_type=151 then pa.p_amount*pa.p_current_month-pa.p_not_inv_mon else pa.p_amount end) as "p_amount",
   pa.p_product_id,
   pa.p_pro_type,
   pa.p_current_month,
   pa.p_exp_annual_income,
   pa.p_deadline,
   p.T_PRODUCT_NAME,
   p.T_IS_REPEAT_INVEST,
   p.T_RETURN_MONEY,
   pa.p_status,
   pa.p_end_inv_tot_mon,
   pa.p_cur_real_tot_mon,
   pa.p_monthly_ext_interest,
   pa.p_amount as "monthlySave",
   log2.a_date,
   (case when log2.a_type=147 or log2.a_type=148 then a_date else null end ) as redeemDate
from
   t_product_account pa
   left join t_product p on  pa.p_product_id = p.T_PID
   left join t_account_log log2 on  log2.p_id = pa.p_id and log2.a_type = 147 or log2.a_type = 148;

/*==============================================================*/
/* View: PRODUCT_DETAIL_NOSTATUS_VW                             */
/*==============================================================*/
create view PRODUCT_DETAIL_NOSTATUS_VW  as
select
   pa.p_id,
   pa.p_u_id,
   pa.p_serial_no,
   pa.p_begin_date,
   pa.p_redeem_date,
   (case when  p_pro_type=118 then pa.p_amount*p_current_month-p_not_inv_mon          when p_pro_type=151 then pa.p_amount*pa.p_current_month-pa.p_not_inv_mon else pa.p_amount end) as "p_amount",
   pa.p_product_id,
   pa.p_pro_type,
   pa.p_current_month,
   pa.p_exp_annual_income,
   pa.p_deadline,
   p.T_PRODUCT_NAME,
   p.T_IS_REPEAT_INVEST,
   p.T_RETURN_MONEY,
   pa.p_status,
   pa.p_end_inv_tot_mon,
   pa.p_cur_real_tot_mon,
   pa.p_monthly_ext_interest,
   pa.p_amount as "monthlySave"
from
   t_product_account pa
   left join t_product p on  pa.p_product_id = p.T_PID;

/*==============================================================*/
/* View: PRODUCT_DETAIL_STATUS_NOTEQ_VW                         */
/*==============================================================*/
create view PRODUCT_DETAIL_STATUS_NOTEQ_VW  as
select
   pa.p_id,
   pa.p_u_id,
   pa.p_serial_no,
   pa.p_begin_date,
   pa.p_redeem_date,
   (case when  p_pro_type=118 then pa.p_amount*p_current_month-p_not_inv_mon          when p_pro_type=151 then pa.p_amount*pa.p_current_month-pa.p_not_inv_mon else pa.p_amount end) as "p_amount",
   pa.p_product_id,
   pa.p_pro_type,
   pa.p_current_month,
   pa.p_exp_annual_income,
   pa.p_deadline,
   p.T_PRODUCT_NAME,
   p.T_IS_REPEAT_INVEST,
   p.T_RETURN_MONEY,
   pa.p_status,
   pa.p_end_inv_tot_mon,
   pa.p_cur_real_tot_mon,
   pa.p_monthly_ext_interest,
   pa.p_amount as "monthlySave",
   log2.a_date,
   (case when log2.a_type=147 or log2.a_type=148 then a_date else null end ) as redeemDate,
   (SELECT sum(case  when log.a_type=108 then log.a_amount end)  FROM             t_account_log log where log.p_id=pa.p_id) as "reInvestTotal",
   (SELECT sum(case  when log.a_type=146 then -log.a_amount end) FROM             t_account_log log where log.p_id=pa.p_id) as "receiveTotal"
from
   t_product_account pa
   left join t_product p on  pa.p_product_id = p.T_PID
   left join t_account_log log2 on  log2.p_id = pa.p_id and log2.a_type = 104;

/*==============================================================*/
/* View: PRODUCT_PROGRAM_VW                                     */
/*==============================================================*/
create view PRODUCT_PROGRAM_VW  as
select distinct
			tu.T_USERNAME,
			tal.a_current_period,
			tal.p_id,
			tal.a_amount,
			tal.a_date,
			tp.T_PRODUCT_NAME,
			tal.a_transfer_status,
			tal.a_descreption
		from
		    t_account_log tal
			left join t_product_account tpa on tpa.p_id=tal.p_id
			left join T_PRODUCT tp on tpa.p_product_id=tp.T_PID
			left join T_USER tu on tu.T_ID=tal.a_user_id
    where 1 = 1
    and  tpa.p_pro_type=tp.t_protype_id;

/*==============================================================*/
/* View: PRODUCT_TIME_VW                                        */
/*==============================================================*/
create view PRODUCT_TIME_VW  as
select p_begin_date as p_days,
    sum(case when p_pro_type=118 then p_amount end) as p_monthly_deposit,
    count(case when p_pro_type=118 then p_amount end) as p_monthly_deposit_count,
    sum(case when p_pro_type=123 then p_amount end) as p_take_month,
    count(case when p_pro_type=123 then p_amount end) as p_take_month_count,
    sum(case when p_pro_type=119 then p_amount end) as p_may_take,
    count(case when p_pro_type=119 then p_amount end) as p_may_take_count,
    sum( p_amount) as p_total_as_day,
    count( p_deadline) as p_deadline_as_day,
    pa.p_pro_type
    from
    t_Product_Account  pa
    where  p_pro_type in(118,123,119)
    GROUP BY
    p_begin_date,p_pro_type;

/*==============================================================*/
/* View: PRODUCT_TOTAL_VW                                       */
/*==============================================================*/
create view PRODUCT_TOTAL_VW  as
select count(*) as p_total from (
    select
    (select T_PRODUCT_NAME from t_product t where t.t_protype_id = p_pro_type  )
     as p_product_name,
    p_deadline,
    sum(p_amount) as p_amount,
    count(p_deadline) as p_deadline_count
    from  t_product_account
    where p_pro_type in(118,123,119)
    group by p_deadline,p_pro_type  );

alter table T_DEBTOR_RECORD
   add constraint FK_T_DEBTOR_REFERENCE_T_DEBT_I foreign key ()
      references T_DEBT_INFO (D_ID)
      on update restrict
      on delete restrict;

alter table T_PRODUCTEARNINGRATE
   add constraint FK_T_PRODUC_REFERENCE_T_PRODUC foreign key ()
      references T_PRODUCT (T_PID)
      on update restrict
      on delete restrict;

