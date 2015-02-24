DROP TABLE LIVESCREEN.SMS_BROADCAST CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.SMS_BROADCAST
(
  BROADCAST_ID    NUMBER                        NOT NULL,
  BROADCAST_NAME  VARCHAR2(200 BYTE)            NOT NULL,
  MESSAGE         VARCHAR2(400 BYTE),
  STATUS          NUMBER                        DEFAULT 1,
  START_TIME      TIMESTAMP(6),
  STOP_TIME       TIMESTAMP(6),
  SHORT_CODE      VARCHAR2(20 BYTE)
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

COMMENT ON COLUMN LIVESCREEN.SMS_BROADCAST.STATUS IS '0 disable, 1 enable';

COMMENT ON COLUMN LIVESCREEN.SMS_BROADCAST.SHORT_CODE IS 'So dich vu 9044, 9063';



CREATE OR REPLACE PUBLIC SYNONYM SMS_BROADCAST FOR LIVESCREEN.SMS_BROADCAST;
