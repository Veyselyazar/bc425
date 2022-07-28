class YCL_MITARBEITER definition
  public
  final
  create public .

public section.

  interfaces ZIF_DISPLAY .

  data MITA_NAME type STRING .
protected section.
private section.
ENDCLASS.



CLASS YCL_MITARBEITER IMPLEMENTATION.


  method ZIF_DISPLAY~DISPLAY.
    write: / 'Mitarbeiter-Name', mita_name.
  endmethod.
ENDCLASS.
