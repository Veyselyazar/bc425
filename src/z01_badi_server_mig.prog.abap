*&---------------------------------------------------------------------*
*& Report Z01_BADI_SERVER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_badi_server_mig.

DATA gs_spfli TYPE spfli.
DATA go_badi TYPE REF TO zbadi_spfli_mig. "ZBADI_SPFLI_MIG


*
START-OF-SELECTION.
*  cl_exithandler=>get_instance(
*    CHANGING
*      instance                      =    go_badi ). " Instanz

  GET BADI go_badi.


  SELECT * FROM spfli INTO gs_spfli.
    WRITE: / gs_spfli-carrid,
             gs_spfli-cityfrom,
             gs_spfli-cityto.
    HIDE: gs_spfli-carrid, gs_spfli-connid.
  ENDSELECT.


AT LINE-SELECTION.
* Badi-Erweiterung vorgesehen
  IF go_badi IS NOT INITIAL.
    CALL BADI go_badi->spfli_erweiterung
      EXPORTING
        iv_carrid = gs_spfli-carrid    " Kurzbezeichnung der Fluggesellschaft
        iv_connid = gs_spfli-connid.    " Code der Einzelflugverbindung
  ENDIF.
