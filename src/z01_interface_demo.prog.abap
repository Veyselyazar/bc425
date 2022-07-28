*&---------------------------------------------------------------------*
*& Report Z01_INTERFACE_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z01_interface_demo.

DATA go_mita1 TYPE REF TO ycl_mitarbeiter.
DATA go_mita2 TYPE REF TO ycl_mitarbeiter.
DATA go_kunde TYPE REF TO ycl_kunde.
data go_display type REF TO zif_display.

CREATE OBJECT go_kunde.
go_kunde->kundenname = 'Maier GmbH'.

*Antwort auf die Frage von Mert:
go_kunde->zif_display~display( ).


CREATE OBJECT go_mita1.
go_mita1->mita_name = 'Marion Müller'.

CREATE OBJECT go_mita2.
go_mita2->mita_name = 'Manfred Müller'.



go_display = go_mita1.
go_display->display( ).

go_display = go_mita2.
go_display->display( ).

go_display = go_kunde.
go_display->display( ).
