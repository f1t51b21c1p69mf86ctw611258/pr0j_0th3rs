DROP SEQUENCE LIVESCREEN.BROADCASTTIME_HIST_SEQ;

CREATE SEQUENCE LIVESCREEN.BROADCASTTIME_HIST_SEQ
  START WITH 24678
  MAXVALUE 9999999999
  MINVALUE 1
  NOCYCLE
  CACHE 200
  NOORDER;


CREATE OR REPLACE PUBLIC SYNONYM BROADCASTTIME_HIST_SEQ FOR LIVESCREEN.BROADCASTTIME_HIST_SEQ;
