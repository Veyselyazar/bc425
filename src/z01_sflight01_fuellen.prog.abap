*&---------------------------------------------------------------------*
*& Report Z01_SFLIGHT01_FUELLEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_sflight01_fuellen.

DATA gs_sflight01 TYPE sflight01.
SELECT * FROM sflight INTO CORRESPONDING FIELDS OF gs_sflight01.
  INSERT sflight01 FROM gs_sflight01.
ENDSELECT.
ULINE.
WRITE:  'Tabelle ist gefüllt'.
