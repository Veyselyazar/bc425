*----------------------------------------------------------------------*
***INCLUDE Z01_SUBSCREEN_AUFRUF_I01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

case ok_code.
  when 'EXIT'.
    leave PROGRAM.
  when 'BACK'.
    leave to screen 0.
ENDCASE.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  HOLEN_DATEN_AUS_SUBSCREEN  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE holen_daten_aus_subscreen INPUT.
  CALL FUNCTION 'Z_PUT_SCARR_RECORD'
   IMPORTING
     ES_SCARR       = scarr
    .

ENDMODULE.