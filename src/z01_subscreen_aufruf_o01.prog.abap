*----------------------------------------------------------------------*
***INCLUDE Z01_SUBSCREEN_AUFRUF_O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  STATUS_0100  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS 'DYNPRO100'.
*  SET TITLEBAR 'xxx'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  EXPORT_FUER_FG  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE export_fuer_fg OUTPUT.
  CALL FUNCTION 'Z_GET_SFLIGHT_RECORD'
    EXPORTING
      is_sflight = sflight.

ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  SCREEN_AUFBEREITUNG  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE screen_aufbereitung OUTPUT.
  IF scarr-carrname IS INITIAL.
    LOOP AT SCREEN.
      IF screen-group1 = 'FLG'.
        screen-active = 0.
        MODIFY SCREEN.
      ENDIF.
    ENDLOOP.
  ENDIF.
ENDMODULE.
