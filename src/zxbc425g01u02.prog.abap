*&---------------------------------------------------------------------*
*&  Include           ZXBC425G01U02
*&---------------------------------------------------------------------*

SUBMIT sapbc425_booking_01
        WITH so_car = flight-carrid
        WITH so_con = flight-connid
        WITH so_fld = flight-fldate
        "VIA SELECTION-SCREEN
        AND RETURN.
