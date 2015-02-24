DROP TABLE LIVESCREEN.SMS_MESSAGES_QUEUE CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.SMS_MESSAGES_QUEUE
(
  MSISDN       VARCHAR2(20 BYTE),
  CONTENT      VARCHAR2(3000 BYTE),
  DATETIME     TIMESTAMP(7),
  STATUS       NUMBER,
  ID           NUMBER(10)                       NOT NULL,
  MOVE_STATUS  NUMBER
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
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


CREATE OR REPLACE PUBLIC SYNONYM SMS_MESSAGES_QUEUE FOR LIVESCREEN.SMS_MESSAGES_QUEUE;
