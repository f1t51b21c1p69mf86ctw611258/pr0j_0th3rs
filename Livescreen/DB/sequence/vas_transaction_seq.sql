DROP SEQUENCE LIVESCREEN.VAS_TRANSACTION_SEQ;

CREATE SEQUENCE LIVESCREEN.VAS_TRANSACTION_SEQ
  START WITH 812228
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;


CREATE OR REPLACE PUBLIC SYNONYM VAS_TRANSACTION_SEQ FOR LIVESCREEN.VAS_TRANSACTION_SEQ;
