REPORT  zbc425_01_cbd_px.

PARAMETERS pa_carr TYPE s_carr_id.

DATA: it_sflight TYPE TABLE OF sflight,
      wa_sflight LIKE LINE OF it_sflight.

DATA  r_exit TYPE REF TO zbc425_01_badi.



START-OF-SELECTION.

*  CALL METHOD cl_exithandler=>get_instance
*    CHANGING
*      instance = r_exit.
  GET BADI r_exit.

  SELECT * FROM sflight INTO TABLE it_sflight
    WHERE  carrid = pa_carr.

  IF sy-subrc = 0.

    LOOP AT it_sflight INTO wa_sflight.

      WRITE: / wa_sflight-carrid, wa_sflight-connid, 11 wa_sflight-fldate.

      CALL BADI r_exit->write_additional_cols
        EXPORTING
          i_wa_sflight = wa_sflight.

    ENDLOOP.

  ELSE.
    WRITE 'No flights found !'.
  ENDIF.
