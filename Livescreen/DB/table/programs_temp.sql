DROP TABLE LIVESCREEN.PROGRAMS_TEMP CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.PROGRAMS_TEMP
(
  PROGRAM_ID       VARCHAR2(50 BYTE)            NOT NULL,
  TIMEPLUG         DATE,
  SUBCONTENTS      VARCHAR2(1000 BYTE),
  CPS_TOPIC_ID     NUMBER(30)                   NOT NULL,
  STATUS           NUMBER(5),
  INDEXS           NUMBER(30)                   NOT NULL,
  DURATION_UPDATE  VARCHAR2(100 BYTE),
  TYPE             NUMBER(5),
  INSERT_TIME      DATE,
  CHAIN_ID         VARCHAR2(50 BYTE),
  CORRECTANSWER    NUMBER(5)
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


CREATE OR REPLACE PUBLIC SYNONYM PROGRAMS_TEMP FOR LIVESCREEN.PROGRAMS_TEMP;
