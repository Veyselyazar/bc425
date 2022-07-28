class ZCL_NB_SPFLI definition
  public
  final
  create public .

public section.

  interfaces IF_BADI_INTERFACE .
  interfaces ZIF_BADI_NEU_SPFLI .
protected section.
private section.
ENDCLASS.



CLASS ZCL_NB_SPFLI IMPLEMENTATION.


  METHOD zif_badi_neu_spfli~spfli_erweiterung.
    DATA lt_sflight TYPE TABLE OF sflight.
    DATA lo_alv TYPE REF TO cl_salv_table.
    SELECT * FROM sflight INTO TABLE lt_sflight
      WHERE carrid = iv_carrid
        AND connid = iv_connid.

    cl_salv_table=>factory(
      IMPORTING
        r_salv_table   = lo_alv
      CHANGING
        t_table        = lt_sflight
           ).
    lo_alv->display( ).

  ENDMETHOD.
ENDCLASS.
