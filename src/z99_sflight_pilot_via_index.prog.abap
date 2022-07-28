*&---------------------------------------------------------------------*
*& Report Z99_SFLIGHT_PILOT_VIA_INDEX
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z99_sflight_pilot_via_index.

DATA gs_sflight TYPE sflight01.

DATA gv_zeit TYPE i.
GET RUN TIME FIELD gv_zeit.
DO 1000 TIMES.

  SELECT * FROM sflight01 INTO gs_sflight
    WHERE zzpilot = 'Mrs. Boeing'.
*    WRITE: / gs_sflight-zzpilot,
*             gs_sflight-zzmeal.

  ENDSELECT.

ENDDO.

GET RUN TIME FIELD gv_zeit.
WRITE: 'Verbrauchte Zeit in Mikro-Sekunden', gv_zeit.
