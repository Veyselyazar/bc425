*&---------------------------------------------------------------------*
*& Report Z01_ALTERNATIVER_STEUERSATZ
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_alternativer_steuersatz.

PARAMETERS pa_netto TYPE bc425_price.
PARAMETERS pa_alter TYPE i.

DATA: gv_tax       TYPE bc425_price,
      gv_alter_tax LIKE gv_tax.

CALL FUNCTION 'BC425_CALC_TAX'
  EXPORTING
    im_netprice      = pa_netto
    im_alter_taxrate = pa_alter
  IMPORTING
    ex_tax           = gv_tax
    ex_alter_tax     = gv_alter_tax.

WRITE: gv_tax, gv_alter_tax.
