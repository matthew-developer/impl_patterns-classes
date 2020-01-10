CLASS ycl_triangle DEFINITION INHERITING FROM ycl_figure
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
            constructor
                IMPORTING iv_name TYPE string,
            rotate REDEFINITION,
            translate_to_json
                IMPORTING iv_xml TYPE string
                RETURNING VALUE(rv_json) TYPE string,
            get_name
                RETURNING VALUE(ro_trangle) TYPE REF TO ycl_figure.


  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA: mo_translator TYPE REF TO yif_translator,
        mv_name TYPE string.

ENDCLASS.

CLASS ycl_triangle IMPLEMENTATION.

  METHOD constructor.
      SUPER->constructor( ).
      mv_name = iv_name.
  ENDMETHOD.

  METHOD rotate.
    WRITE: 'Rotate 160 degrees'.
  ENDMETHOD.

  METHOD translate_to_json.
    DATA(lv_xml) = translate(  ).
    rv_json = mo_translator->translate_to_json( lv_xml ).
  ENDMETHOD.

  METHOD get_name.
    ro_trangle = new ycl_triangle( mv_name ).
  ENDMETHOD.

ENDCLASS.
