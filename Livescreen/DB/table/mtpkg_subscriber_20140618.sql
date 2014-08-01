DROP TABLE LIVESCREEN.MTPKG_SUBSCRIBER_20140618 CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.MTPKG_SUBSCRIBER_20140618
(
  MSISDN           VARCHAR2(15 BYTE),
  PKGD_ID          VARCHAR2(127 BYTE),
  REGISTER_TIME    DATE,
  DEREGISTER_TIME  DATE,
  STATUS           NUMBER(3),
  LAST_UPDATE      DATE,
  LAST_UPDATE_BY   VARCHAR2(255 BYTE)
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
