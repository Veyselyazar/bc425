class ZCL_IM_MESSAGE_SPFLI definition
  public
  final
  create public .

public section.

  interfaces ZIF_EX_BADI_SPFLI .
protected section.
private section.

  methods DISPLAY_ZUSATZ_MESSAGE .
ENDCLASS.



CLASS ZCL_IM_MESSAGE_SPFLI IMPLEMENTATION.


  method DISPLAY_ZUSATZ_MESSAGE.

    message 'Noch eine Nachricht ' type 'I'.
  endmethod.
ENDCLASS.
