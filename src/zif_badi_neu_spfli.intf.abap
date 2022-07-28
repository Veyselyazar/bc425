interface ZIF_BADI_NEU_SPFLI
  public .


  interfaces IF_BADI_INTERFACE .

  methods SPFLI_ERWEITERUNG
    importing
      !IV_CARRID type SPFLI-CARRID
      !IV_CONNID type SPFLI-CONNID .
endinterface.
