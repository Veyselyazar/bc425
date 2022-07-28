*&---------------------------------------------------------------------*
*& Report Z01_SFLIGHT_FREIE_PLAETZE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_sflight_freie_plaetze.

DATA gs_sflight TYPE sflight01.

SELECT * FROM sflight01 INTO gs_sflight.
  gs_sflight-zz_seatsfree_e =
     gs_sflight-seatsmax - gs_sflight-seatsocc.
  UPDATE sflight01 FROM gs_sflight.
ENDSELECT.
