DROP TABLE LIVESCREEN.ZONES CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.ZONES
(
  ZONE_ID      NUMBER(20)                       NOT NULL,
  AREA_ID      NUMBER(20),
  ZONENAME     VARCHAR2(50 BYTE)                NOT NULL,
  DESCRIPTONS  VARCHAR2(200 BYTE),
  CREATEDDATE  DATE,
  USER_ID      NUMBER,
  STATUS       NUMBER(5)                        DEFAULT 1,
  PARENT_ID    NUMBER(20)
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


CREATE OR REPLACE SYNONYM CBC.ZONES FOR LIVESCREEN.ZONES;


CREATE OR REPLACE PUBLIC SYNONYM ZONES FOR LIVESCREEN.ZONES;
