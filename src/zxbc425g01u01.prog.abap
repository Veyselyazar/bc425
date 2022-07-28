*&---------------------------------------------------------------------*
*&  Include           ZXBC425G01U01
*&---------------------------------------------------------------------*
* Mandantenunabhängigkeit

CASE sy-mandt.
  WHEN 100.
    CASE sy-dbsys.
      WHEN 'ADABAS D'.
        IF flight-fldate < sy-datum.
          MESSAGE w011(bc425) WITH sy-datum.
        ENDIF.
      WHEN 'ORACLE'.
    ENDCASE.
  WHEN 200.

  WHEN 800.

ENDCASE.
