ALTER TABLE LIVESCREEN.MTPKG_CONFIG
 DROP PRIMARY KEY CASCADE;

DROP TABLE LIVESCREEN.MTPKG_CONFIG CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.MTPKG_CONFIG
(
  CONFIG_TYPE   VARCHAR2(31 BYTE)               NOT NULL,
  CONFIG_NAME   VARCHAR2(200 BYTE)              NOT NULL,
  CONFIG_VALUE  VARCHAR2(1023 BYTE),
  DESCRIPTION   VARCHAR2(1023 BYTE),
  EDITABLE      NUMBER(1),
  RANGE_VALUE   VARCHAR2(127 BYTE),
  ALLOW_LOAD    NUMBER(1)                       NOT NULL
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


CREATE UNIQUE INDEX LIVESCREEN.MT_CONFIG_PK ON LIVESCREEN.MTPKG_CONFIG
(CONFIG_NAME)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
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
NOPARALLEL;


CREATE OR REPLACE PUBLIC SYNONYM MTPKG_CONFIG FOR LIVESCREEN.MTPKG_CONFIG;


ALTER TABLE LIVESCREEN.MTPKG_CONFIG ADD (
  CONSTRAINT MT_CONFIG_PK
  PRIMARY KEY
  (CONFIG_NAME)
  USING INDEX LIVESCREEN.MT_CONFIG_PK
  ENABLE VALIDATE);
