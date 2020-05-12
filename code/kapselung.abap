" Kapselung
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