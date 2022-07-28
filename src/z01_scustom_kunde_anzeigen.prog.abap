*&---------------------------------------------------------------------*
*& Report Z01_SCUSTOM_KUNDE_ANZEIGEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_scustom_kunde_anzeigen.

DATA gs_scustom TYPE scustom.
DATA go_cust TYPE REF TO cl_bc425_customer_01.
DATA gt_cust TYPE TABLE OF REF TO cl_bc425_customer_01.
DATA gv_geb_dat TYPE i VALUE 725870.


SELECT * FROM scustom INTO gs_scustom
  WHERE id BETWEEN 1 AND 100.

  gv_geb_dat = gv_geb_dat   + 30.

  CREATE OBJECT go_cust
    EXPORTING
      iv_id       = gs_scustom-id
      iv_birthday = conv #( gv_geb_dat ).

  APPEND go_cust TO gt_cust.
ENDSELECT.

LOOP AT gt_cust INTO go_cust.
  go_cust->display( ).
ENDLOOP.
