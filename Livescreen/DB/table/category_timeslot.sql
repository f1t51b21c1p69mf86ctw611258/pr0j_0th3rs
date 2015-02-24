ALTER TABLE LIVESCREEN.CATEGORY_TIMESLOT
 DROP PRIMARY KEY CASCADE;

DROP TABLE LIVESCREEN.CATEGORY_TIMESLOT CASCADE CONSTRAINTS;

CREATE TABLE LIVESCREEN.CATEGORY_TIMESLOT
(
  CATEGORY_ID       NUMBER(15),
  CATEGORY_NAME     VARCHAR2(20 CHAR),
  ZONE_ID           NUMBER(15),
  ZONE_NAME         VARCHAR2(200 CHAR),
  CP_TOPIC_ID       NUMBER(30),
  CP_TOPIC_NAME     VARCHAR2(200 CHAR),
  BROADCASTTIME_ID  NUMBER(30),
  PROGRAM_INDEX     NUMBER(15),
  PROGRAM_ID        VARCHAR2(20 CHAR),
  SUBCONTENT        VARCHAR2(2000 CHAR),
  STATUS            NUMBER(5),
  STARTTIME         VARCHAR2(20 CHAR),
  CREATEDDATE       DATE,
  DESCRIPTION       VARCHAR2(2000 CHAR),
  RANDOM_RATE       NUMBER,
  INTERVAL          NUMBER(6),
  PRIORITY          NUMBER(6),
  SCHEDULE_ID       NUMBER(15),
  TIMESLOT_ID       VARCHAR2(50 CHAR)           NOT NULL
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


CREATE UNIQUE INDEX LIVESCREEN.CATEGORY_TIMESLOT_PK ON LIVESCREEN.CATEGORY_TIMESLOT
(TIMESLOT_ID)
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


ALTER TABLE LIVESCREEN.CATEGORY_TIMESLOT ADD (
  CONSTRAINT CATEGORY_TIMESLOT_PK
  PRIMARY KEY
  (TIMESLOT_ID)
  USING INDEX LIVESCREEN.CATEGORY_TIMESLOT_PK
  ENABLE VALIDATE);

ALTER TABLE LIVESCREEN.CATEGORY_TIMESLOT ADD (
  CONSTRAINT CATEGORY_TIMESLOT_BROADCA_FK1 
  FOREIGN KEY (CATEGORY_ID) 
  REFERENCES LIVESCREEN.BROADCAST_CATEGORY (CATEGORY_ID)
  ON DELETE CASCADE
  ENABLE VALIDATE,
  CONSTRAINT CATEGORY_TIMESLOT_CP_TOPI_FK1 
  FOREIGN KEY (CP_TOPIC_ID) 
  REFERENCES LIVESCREEN.CP_TOPIC (CP_TOPIC_ID)
  ON DELETE CASCADE
  ENABLE VALIDATE,
  CONSTRAINT CATEGORY_TIMESLOT_ZONE_FK1 
  FOREIGN KEY (ZONE_ID) 
  REFERENCES LIVESCREEN.ZONE (ZONE_ID)
  ON DELETE CASCADE
  ENABLE VALIDATE);
