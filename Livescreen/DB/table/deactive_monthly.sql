DROP TABLE LIVESCREEN.DEACTIVE_MONTHLY CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.DEACTIVE_MONTHLY
(
  TIME   VARCHAR2(9 BYTE),
  TIMES  NUMBER
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


CREATE OR REPLACE PUBLIC SYNONYM DEACTIVE_MONTHLY FOR LIVESCREEN.DEACTIVE_MONTHLY;
