class ZCL_IM_BC425IM01 definition
  public
  final
  create public .

public section.

  interfaces IF_EX_BADI_BOOK01 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IM_BC425IM01 IMPLEMENTATION.


  method IF_EX_BADI_BOOK01~CHANGE_VLINE.
  c_pos = c_pos + 25.
  endmethod.


  METHOD if_ex_badi_book01~output.
    DATA lv_custname TYPE scustom-name.
    SELECT SINGLE name FROM scustom
      INTO lv_custname
      WHERE id = i_booking-customid.

    IF sy-subrc = 0.
      WRITE lv_custname.
    ELSE.
      WRITE 'Name nicht gefunden'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
