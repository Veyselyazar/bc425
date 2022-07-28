interface ZIF_EX_BADI_SPFLI_KB
  public .


  interfaces IF_BADI_INTERFACE .

  methods SPFLI_ERWEITERUNG
    importing
      !IV_CARRID type SPFLI-CARRID
      !IV_CONNID type SPFLI-CONNID .
endinterface.
