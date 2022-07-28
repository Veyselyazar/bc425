class ZCL_IM_MIG01 definition
  public
  final
  create public .

public section.

  interfaces ZIF_EX_BADI_SPFLI_MIG .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IM_MIG01 IMPLEMENTATION.


  method ZIF_EX_BADI_SPFLI_MIG~SPFLI_ERWEITERUNG.
    write: / iv_carrid, iv_connid, '( hier fehlt weitere Implementierungscode)'.
  endmethod.
ENDCLASS.
