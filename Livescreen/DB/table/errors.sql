DROP TABLE LIVESCREEN.ERRORS CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.ERRORS
(
  ERROR_DETAIL  NVARCHAR2(2000)
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


CREATE OR REPLACE PUBLIC SYNONYM ERRORS FOR LIVESCREEN.ERRORS;
