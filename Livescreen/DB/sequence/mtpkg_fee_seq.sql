DROP SEQUENCE LIVESCREEN.MTPKG_FEE_SEQ;

CREATE SEQUENCE LIVESCREEN.MTPKG_FEE_SEQ
  START WITH 21
  MAXVALUE 9999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;


CREATE OR REPLACE PUBLIC SYNONYM MTPKG_FEE_SEQ FOR LIVESCREEN.MTPKG_FEE_SEQ;
