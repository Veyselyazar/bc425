class ZCL_EX_BC425_PX_BADI definition
  public
  final
  create public .

public section.

  interfaces IF_BADI_INTERFACE .
  interfaces IF_BC425_FILTER_BADI .
protected section.
private section.
ENDCLASS.



CLASS ZCL_EX_BC425_PX_BADI IMPLEMENTATION.


  METHOD if_bc425_filter_badi~write_additional_cols.
    WRITE: is_spfli-distance UNIT is_spfli-distid, is_spfli-distid.
  ENDMETHOD.
ENDCLASS.
