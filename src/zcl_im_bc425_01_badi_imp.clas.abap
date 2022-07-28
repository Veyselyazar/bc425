class ZCL_IM_BC425_01_BADI_IMP definition
  public
  final
  create public .

public section.

  interfaces ZIF_EX_BC425_01_BADI .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IM_BC425_01_BADI_IMP IMPLEMENTATION.


  method ZIF_EX_BC425_01_BADI~WRITE_ADDITIONAL_COLS.
    write: i_wa_sflight-planetype, i_wa_sflight-seatsmax, i_wa_sflight-seatsocc. .
  endmethod.
ENDCLASS.
