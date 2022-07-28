*&---------------------------------------------------------------------*
*& Report Z01_BADI_SERVER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_neues_badi_server.

DATA gs_spfli TYPE spfli.
DATA go_badi TYPE REF TO zbadi_neu_spfli.

START-OF-SELECTION.
  TRY.
      GET BADI go_badi.
    CATCH cx_root.
      MESSAGE 'es gibt kein BADI-Handle' TYPE 'I'.
  ENDTRY.


  SELECT * FROM spfli INTO gs_spfli.
    WRITE: / gs_spfli-carrid,
             gs_spfli-connid,
             gs_spfli-cityfrom,
             gs_spfli-cityto.
    HIDE: gs_spfli-carrid, gs_spfli-connid.
  ENDSELECT.

AT LINE-SELECTION.
  IF go_badi IS NOT INITIAL.
    CALL BADI go_badi->spfli_erweiterung
      EXPORTING
        iv_carrid = gs_spfli-carrid    " Kurzbezeichnung der Fluggesellschaft
        iv_connid = gs_spfli-connid.    " Code der Einzelflugverbindung
  ENDIF.
