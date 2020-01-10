interface YIF_TRANSLATOR
  public .

  METHODS: translate_to_json
                IMPORTING iv_xml TYPE string
                RETURNING VALUE(rv_json) TYPE string.

endinterface.
