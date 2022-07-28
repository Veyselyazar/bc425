*&---------------------------------------------------------------------*
*& Report  BC400_GSS_HELLO
*&---------------------------------------------------------------------*

REPORT  zbc400_gss_hello.

data gs_sflight type sflight01.

PARAMETERS: pa_name TYPE string.

WRITE 'Hello World!'(hw1).

NEW-LINE.

WRITE: 'Hello'(hw2),
       pa_name.
