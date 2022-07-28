*&---------------------------------------------------------------------*
*&  Include           ZWKO_E01
*&---------------------------------------------------------------------*


INITIALIZATION.
  pa_car = 'UA'.

*  new-page.
*    WRITE 'Das ist die Überschrift'.
*    ULINE.

at LINE-SELECTION.
  message 'Doppelklick' type 'I'.

START-OF-SELECTION.

  SELECT SINGLE * FROM spfli
    INTO gs_spfli
  WHERE carrid = pa_car.
    IF sy-subrc = 0.
      WRITE: gs_spfli-carrid,
             gs_spfli-connid,
             gs_spfli-cityfrom,
             gs_spfli-cityto.
    ELSE.
      MESSAGE 'Datensatz existiert nicht' TYPE 'S'.
    ENDIF.
