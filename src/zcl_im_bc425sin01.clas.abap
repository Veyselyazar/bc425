class ZCL_IM_BC425SIN01 definition
  public
  final
  create public .

public section.

  interfaces IF_EX_BC425_01FLIGHT2 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IM_BC425SIN01 IMPLEMENTATION.


  method IF_EX_BC425_01FLIGHT2~GET_DATA.
    move IF_EX_BC425_01FLIGHT2~wa to e_flight.
  endmethod.


  method IF_EX_BC425_01FLIGHT2~PUT_DATA.
    move i_flight to IF_EX_BC425_01FLIGHT2~wa.
  endmethod.
ENDCLASS.
