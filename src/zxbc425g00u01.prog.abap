*&---------------------------------------------------------------------*
*&  Include           ZXBC425G00U01
*&---------------------------------------------------------------------*

CASE sy-mandt.
  WHEN 100.

    IF flight-fldate < sy-datum.
      MESSAGE s011(bc425) WITH sy-datum.
    ENDIF.

  WHEN 200.


ENDCASE.
