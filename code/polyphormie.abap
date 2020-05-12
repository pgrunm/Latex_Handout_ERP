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
CALL Method class1_prgm->prgm_type. 
Write: 'follows'. 

CALL Method class1_prgm->approach1. 
EndMethod. 
ENDCLASS. 

Start-Of-Selection. 
Data: class_1 Type Ref To class_procedural, 
class_2 Type Ref To class_OO. 

Create Object class_1. 
Create Object class_2. 
CALL Method class_type_approach->start 
Exporting 

class1_prgm = class_1. 
New-Line. 
CALL Method class_type_approach->start 
Exporting 
class1_prgm = class_2.  