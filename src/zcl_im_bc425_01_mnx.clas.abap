class ZCL_IM_BC425_01_MNX definition
  public
  final
  create public .

public section.

  interfaces IF_EX_BADI_01_MX .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IM_BC425_01_MNX IMPLEMENTATION.


  method IF_EX_BADI_01_MX~EXIT_MENU_BOOK.
    set PARAMETER ID 'CAR' field is_book-carrid.
    set PARAMETER ID 'CON' field is_book-connid.
    set PARAMETER ID 'DAY' field is_book-FLDATE.
    set PARAMETER ID 'BOK' field is_book-bookid.
    call TRANSACTION 'BC425_BOOK_DET'
     AND SKIP FIRST SCREEN.
  endmethod.
ENDCLASS.
