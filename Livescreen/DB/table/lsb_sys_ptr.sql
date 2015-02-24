DROP TABLE LIVESCREEN.LSB_SYS_PTR CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.LSB_SYS_PTR
(
  PTR_TYPE     VARCHAR2(30 BYTE)                NOT NULL,
  PTR_NAME     VARCHAR2(30 BYTE)                NOT NULL,
  PTR_VAL      VARCHAR2(400 BYTE),
  PTR_DESC     VARCHAR2(400 BYTE),
  EDITABLE     NUMBER(1),
  RANGE_VALUE  VARCHAR2(100 BYTE),
  ALLOW_LOAD   NUMBER(1)                        NOT NULL
)
TABLESPACE LSB
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


CREATE OR REPLACE PUBLIC SYNONYM LSB_SYS_PTR FOR LIVESCREEN.LSB_SYS_PTR;
