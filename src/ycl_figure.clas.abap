CLASS ycl_figure DEFINITION abstract
  PUBLIC.

  PUBLIC SECTION.
    METHODS:
            rotate ABSTRACT,
            translate
                RETURNING VALUE(rv_value) TYPE string.

ENDCLASS.

CLASS ycl_figure IMPLEMENTATION.

  METHOD translate.
    rv_value = 'Translate to xml'.
  ENDMETHOD.

ENDCLASS.
