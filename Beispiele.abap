" Erstellung von Klassen: Erfolgt zweigeteilt, zunächst eine Definition, dann eine Implementierung. (Source: ABAP Objects_ Introduction to Programming SAP Applications, PDF S. 124)
" Das ist eine Beispiel Klasse Auto.
CLASS Auto DEFINITION.
    ...
ENDCLASS.

" Implementierung einer Beispiel Klasse. Bsp S. 127
CLASS Auto IMPLEMENTATION.
    ...
ENDCLASS.


" Sichtbarkeiten: Public, Protected und Private
" Public: Zugreifbar von allen Usern, Methoden, Subklassen und der Klasse selbst. -> Externe Zugriffsmöglichkeit der Klasse
" Protected: Zugriff von Subklassen und eigenen Methoden einer Klasse.
" Private: Zugriff ist nur für klasseneigene Methoden möglich.

CLASS Auto DEFINITION.
    PUBLIC SECTION.
        ...
    PROTECTED SECTION.
        ...
    PRIVATE SECTION.
        ...
ENDCLASS.

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

" Beginnt ab Seite 140.
" Vererbung: Klasse football_player erbt von Klasse player.
class kleinwagen DEFINITION INHERITING
    FROM Auto.
endclass.

class kleinwagen IMPLEMENTATION.

" Polymorphie
Report ZPolymorphism1. 
CLASS class_prgm Definition Abstract. 
PUBLIC Section. 
Methods: prgm_type Abstract, 
approach1 Abstract. 
ENDCLASS. 

CLASS class_procedural Definition 
Inheriting From class_prgm. 
PUBLIC Section. 
Methods: prgm_type Redefinition, 
approach1 Redefinition. 
ENDCLASS. 

CLASS class_procedural Implementation. 
Method prgm_type. 
Write: 'Procedural programming'. 

EndMethod. Method approach1. 
Write: 'top-down approach'. 

EndMethod. ENDCLASS. 
CLASS class_OO Definition 
Inheriting From class_prgm. 
PUBLIC Section. 
Methods: prgm_type Redefinition, 
approach1 Redefinition. 
ENDCLASS. 

CLASS class_OO Implementation. 
Method prgm_type. 
Write: 'Object oriented programming'. 
EndMethod. 

Method approach1. 
Write: 'bottom-up approach'.
EndMethod. 
ENDCLASS. 

CLASS class_type_approach Definition. 
PUBLIC Section. 
CLASS-METHODS: 
start Importing class1_prgm 
Type Ref To class_prgm. 
ENDCLASS. 

CLASS class_type_approach IMPLEMENTATION. 
Method start. 
CALL Method class1_prgm→prgm_type. 
Write: 'follows'. 

CALL Method class1_prgm→approach1. 
EndMethod. 
ENDCLASS. 

Start-Of-Selection. 
Data: class_1 Type Ref To class_procedural, 
class_2 Type Ref To class_OO. 

Create Object class_1. 
Create Object class_2. 
CALL Method class_type_approach⇒start 
Exporting 

class1_prgm = class_1. 
New-Line. 
CALL Method class_type_approach⇒start 
Exporting 
class1_prgm = class_2.  

" Beispiel Programm