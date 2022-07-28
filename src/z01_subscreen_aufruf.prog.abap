*&---------------------------------------------------------------------*
*& Report Z01_SUBSCREEN_AUFRUF
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_subscreen_aufruf.
PARAMETERS: pa_car  TYPE sflight-carrid MEMORY ID car,
            pa_con  TYPE sflight-connid MEMORY ID con,
            pa_date TYPE sbook-fldate MEMORY ID day.

PARAMETERS pa_rb1 RADIOBUTTON GROUP gr1.
PARAMETERS pa_rb2 RADIOBUTTON GROUP gr1.
DATA gv_programm TYPE c LENGTH 40.
DATA gv_dynnr TYPE sy-dynnr.

TABLES sflight.
tables scarr.
DATA ok_code TYPE sy-ucomm.
clear scarr.

CASE 'X'.
  WHEN pa_rb1.
    gv_programm = sy-cprog.
    gv_dynnr = '0110'.
  WHEN pa_rb2.
    gv_programm = 'SAPLZBC425_01'.
    gv_dynnr = '0120'.
ENDCASE.

SELECT SINGLE * FROM sflight
  INTO sflight
  WHERE carrid = pa_car
    AND connid = pa_con
    AND fldate = pa_date.

IF sy-subrc = 0.
  CALL SCREEN 100.
ELSE.
  MESSAGE 'Flug existiert nicht' TYPE 'S'.
ENDIF.

INCLUDE z01_subscreen_aufruf_o01.

INCLUDE z01_subscreen_aufruf_i01.
