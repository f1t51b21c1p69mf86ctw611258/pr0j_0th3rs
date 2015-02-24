ALTER TABLE LIVESCREEN.MTPKG_PACKAGE_DETAIL
 DROP PRIMARY KEY CASCADE;

DROP TABLE LIVESCREEN.MTPKG_PACKAGE_DETAIL CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.MTPKG_PACKAGE_DETAIL
(
  PKGD_ID          VARCHAR2(127 BYTE),
  PKGD_NAME        VARCHAR2(255 BYTE),
  PKGD_TYPE        VARCHAR2(63 BYTE),
  PKG_ID           NUMBER(7),
  REGISTER_CODE    VARCHAR2(159 BYTE),
  DEREGISTER_CODE  VARCHAR2(159 BYTE),
  ACTIVE_FEE       NUMBER(10,3),
  RECURRENT_FEE    NUMBER(10,3)
)
TABLESPACE MTPKG
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

COMMENT ON COLUMN LIVESCREEN.MTPKG_PACKAGE_DETAIL.PKGD_TYPE IS 'daily || weekly || monthly';

COMMENT ON COLUMN LIVESCREEN.MTPKG_PACKAGE_DETAIL.REGISTER_CODE IS 'Cu phap dang ky Goi tin hien tai';

COMMENT ON COLUMN LIVESCREEN.MTPKG_PACKAGE_DETAIL.DEREGISTER_CODE IS 'Cu phap huy dang ky Goi tin hien tai';

COMMENT ON COLUMN LIVESCREEN.MTPKG_PACKAGE_DETAIL.ACTIVE_FEE IS 'Phi kich hoat';

COMMENT ON COLUMN LIVESCREEN.MTPKG_PACKAGE_DETAIL.RECURRENT_FEE IS 'Phi tru cuoc dinh ky';



CREATE UNIQUE INDEX LIVESCREEN.MT_PKG_PK ON LIVESCREEN.MTPKG_PACKAGE_DETAIL
(PKGD_ID)
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


CREATE OR REPLACE PUBLIC SYNONYM MTPKG_PACKAGE_DETAIL FOR LIVESCREEN.MTPKG_PACKAGE_DETAIL;


ALTER TABLE LIVESCREEN.MTPKG_PACKAGE_DETAIL ADD (
  CONSTRAINT MT_PKG_PK
  PRIMARY KEY
  (PKGD_ID)
  USING INDEX LIVESCREEN.MT_PKG_PK
  ENABLE VALIDATE);

ALTER TABLE LIVESCREEN.MTPKG_PACKAGE_DETAIL ADD (
  CONSTRAINT MTPKG_PACKAGE_DETAIL_R01 
  FOREIGN KEY (PKG_ID) 
  REFERENCES LIVESCREEN.MTPKG_PACKAGE (PKG_ID)
  ON DELETE CASCADE
  ENABLE VALIDATE);
