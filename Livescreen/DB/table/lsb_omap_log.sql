DROP TABLE LIVESCREEN.LSB_OMAP_LOG CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.LSB_OMAP_LOG
(
  LOG_USERNAME  VARCHAR2(200 BYTE)              NOT NULL,
  LOG_ACTION    VARCHAR2(300 BYTE),
  LOG_DESCRIBE  VARCHAR2(3000 BYTE),
  LOG_TIME      DATE,
  LOG_LEVEL     NUMBER(1)
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


CREATE OR REPLACE PUBLIC SYNONYM LSB_OMAP_LOG FOR LIVESCREEN.LSB_OMAP_LOG;
