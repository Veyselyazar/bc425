REPORT  zbc425_01_iep_fm.

PARAMETERS: netprice  TYPE bc425_price,
            discount  TYPE i.

DATA: fullprice  TYPE bc425_price,
      discprice  TYPE bc425_price.


CALL FUNCTION 'BC425_01_CALC_PRICE'
  EXPORTING
    im_netprice        = netprice
    IM_DISCOUNT        = discount
 IMPORTING
   EX_FULLPRICE       = fullprice
   EX_DISCPRICE       = discprice
          .


WRITE: / 'Full price :',     18 fullprice,
       / 'Discount price :', 18 discprice.
