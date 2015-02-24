DROP PACKAGE LIVESCREEN.TYPES;

CREATE OR REPLACE PACKAGE LIVESCREEN."TYPES"
AS
    TYPE ref_cursor IS REF CURSOR;
    TYPE t_tbl_chart_result IS TABLE OF chart_result%ROWTYPE;    
END;
/
