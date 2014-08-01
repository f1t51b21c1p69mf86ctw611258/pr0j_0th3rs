DROP SEQUENCE LIVESCREEN.SEQ_BROADCASTTIME_UPLOAD;

CREATE SEQUENCE LIVESCREEN.SEQ_BROADCASTTIME_UPLOAD
  START WITH 81
  MAXVALUE 9999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;


CREATE OR REPLACE PUBLIC SYNONYM SEQ_BROADCASTTIME_UPLOAD FOR LIVESCREEN.SEQ_BROADCASTTIME_UPLOAD;
