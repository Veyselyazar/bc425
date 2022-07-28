*&---------------------------------------------------------------------*
*& Report Z01_SCUSTOM_KUNDE_ANZEIGEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_SCUSTOM_KUNDE_SCUSTOM.

PARAMETERS: pa_kdn type scustom-id,
            pa_geb type sy-datum.

data go_cust type REF TO CL_BC425_CUSTOMER_01.
data gv_geb_dat type i.
gv_geb_dat = pa_geb.

CREATE OBJECT go_cust
  EXPORTING
    iv_id  = pa_kdn
    iv_birthday = pa_geb
    .

go_cust->display( ).
