DROP TABLE LIVESCREEN.VASGATE_SYNC CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.VASGATE_SYNC
(
  REQ_ID        VARCHAR2(15 BYTE),
  MSISDN        VARCHAR2(20 BYTE),
  REQ_TIME      VARCHAR2(20 BYTE),
  STATUS        NUMBER(2),
  REQ_MSG       VARCHAR2(50 BYTE),
  EXTEND_TIME   VARCHAR2(20 BYTE),
  PRICE         NUMBER(10),
  PACKAGE       VARCHAR2(10 BYTE),
  RETRY         NUMBER(2),
  STATE         NUMBER(2),
  LASTUPDATE    DATE,
  ERROR_DETAIL  VARCHAR2(100 BYTE),
  SERVICE_ID    VARCHAR2(10 BYTE),
  CHANNEL       VARCHAR2(10 BYTE)
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
