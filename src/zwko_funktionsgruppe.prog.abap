*&---------------------------------------------------------------------*
*& Report ZWKO_FUNKTIONSGRUPPE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zwko_funktionsgruppe.

DATA lokal_scarr TYPE scarr.
lokal_scarr-carrid = 'AA'.
lokal_scarr-carrname = 'American Airlines'.

CALL FUNCTION 'Z_SET_SCARR'
  EXPORTING
    is_scarr = lokal_scarr.
MESSAGE 'Funktionsgruppe ist gefüllt' TYPE 'I'.

CALL FUNCTION 'Z_DISPLAY_SCARR'.
