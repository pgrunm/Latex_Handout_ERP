" Kapselung
" -> Getter & Setter z. B. per Interface (Siehe: https://www.tutorialspoint.com/sap_abap/sap_abap_encapsulation.htm)
" Oder auch: https://zevolving.com/2011/02/read-only-attribute-vs-getter-methods/
CLASS car DEFINITION.
    PUBLIC SECTION.
      DATA: speed TYPE i READ-ONLY.
      METHODS: get_speed RETURNING value(return) TYPE i.
      METHODS: set_speed IMPORTING value TYPE i.
  ENDCLASS.                    
  
 CLASS car IMPLEMENTATION.
 METHOD get_speed.
    return = speed.
 ENDMETHOD.                   
 METHOD set_speed.
    speed = value.
 ENDMETHOD.                    
 ENDCLASS.  