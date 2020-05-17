" Polymorphie
" Definition eines Interface
INTERFACE if_flight_plan.
  METHODS set_city_from
    IMPORTING
      city TYPE s_from_cit
    RAISING
      cx_city_validation.
  METHODS get_city_from
    RETURNING VALUE(result) TYPE s_from_cit.
ENDINTERFACE.

CLASS flight_plan DEFINITION.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        airline_id TYPE s_carrid
        connection_id TYPE s_conn_id.

    INTERFACES if_flight_plan.

  PRIVATE SECTION.
    DATA: airline_id TYPE s_carr_id,
          connection_id TYPE s_conn_id,
          time_zone_city_from TYPE s_tzone,
          city_from TYPE s_from_cit.
ENDCLASS.

CLASS flight_plan IMPLEMENTATION.

  METHOD constructor.
    me->airline_id = airline_id.
    me->connection_id = connection_id.
  ENDMETHOD.

  METHOD if_flight_plan~set_city_from.
    IF city_has_airport( city_from ) = abap_false.
      RAISE EXCEPTION TYPE cx_city_without_airport.
    ENDIF.
    me->time_zone_city_from = get_time_zone_city( city_from ).
    me->city_from = city_from.
  ENDMETHOD.

  METHOD if_flight_plan~get_city_from.
    result = city_from.
  ENDMETHOD.

ENDCLASS.

FUNCTION SET_CITY_FRANKFURT.
* IMPORTING VALUE(flight_plan_instance) TYPE REF TO if_flight_plan
  flight_plan_instance->set_city_from( 'Frankfurt' ).
ENDFUNCTION.

" Gibt erneut Frankfurt aus:
DATA: flight_plan_abstract_instance TYPE REF TO if_flight_plan.

flight_plan_abstract_instance = NEW flight_plan( airline_id = 'BA' connection_id = '400' ).

ba_flight_plan->set:city_from( 'London' ).
CALL FUNCTION 'SET_CITY_FRANKFURT'
  EXPORTING
    flight_plan_instance = flight_plan_abstract_instance.

WRITE flight_plan_abstract_instance->get_city_from( ).