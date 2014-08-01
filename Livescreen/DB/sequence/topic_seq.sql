DROP SEQUENCE LIVESCREEN.TOPIC_SEQ;

CREATE SEQUENCE LIVESCREEN.TOPIC_SEQ
  START WITH 201
  MAXVALUE 99999999999
  MINVALUE 1
  NOCYCLE
  CACHE 200
  NOORDER;


CREATE OR REPLACE PUBLIC SYNONYM TOPIC_SEQ FOR LIVESCREEN.TOPIC_SEQ;
