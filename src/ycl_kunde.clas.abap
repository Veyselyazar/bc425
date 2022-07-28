class YCL_KUNDE definition
  public
  final
  create public .

public section.

  interfaces ZIF_DISPLAY .

  data KUNDENNAME type STRING .
protected section.
private section.
ENDCLASS.



CLASS YCL_KUNDE IMPLEMENTATION.


  method ZIF_DISPLAY~DISPLAY.
    uline.
    write: 'Kunden-Name', kundenname.
  endmethod.
ENDCLASS.
