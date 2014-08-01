ALTER TABLE LIVESCREEN.TOPIC
 DROP PRIMARY KEY CASCADE;

DROP TABLE LIVESCREEN.TOPIC CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.TOPIC
(
  TOPIC_ID          NUMBER(30),
  TOPICNAME         VARCHAR2(50 CHAR)           NOT NULL,
  TOPICDESCRIPTION  VARCHAR2(500 CHAR),
  TOPICSTATUS       NUMBER(5)                   NOT NULL,
  CREATEDDATE       DATE                        NOT NULL,
  CREATEDBY         NUMBER(30)                  NOT NULL,
  MODIFIEDBY        NUMBER(30),
  MODIFIEDDATE      DATE
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


CREATE UNIQUE INDEX LIVESCREEN.TOPIC_PK ON LIVESCREEN.TOPIC
(TOPIC_ID)
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


CREATE OR REPLACE PUBLIC SYNONYM TOPIC FOR LIVESCREEN.TOPIC;


ALTER TABLE LIVESCREEN.TOPIC ADD (
  CONSTRAINT TOPIC_PK
  PRIMARY KEY
  (TOPIC_ID)
  USING INDEX LIVESCREEN.TOPIC_PK
  ENABLE VALIDATE);
