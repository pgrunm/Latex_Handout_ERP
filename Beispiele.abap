" Erstellung von Klassen: Erfolgt zweigeteilt, zunächst eine Definition, dann eine Implementierung. (Source: ABAP Objects_ Introduction to Programming SAP Applications, PDF S. 124)
" Das ist eine Beispiel Klasse Auto.
CLASS Auto DEFINITION
    ...
ENDCLASS.

" Implementierung einer Beispiel Klasse. Bsp S. 127
CLASS Auto IMPLEMENTATION
    ...
ENDCLASS.


" Sichtbarkeiten: Public, Protected und Private
" Public: Zugreifbar von allen Usern, Methoden, Subklassen und der Klasse selbst. -> Externe Zugriffsmöglichkeit der Klasse
" Protected: Zugriff von Subklassen und eigenen Methoden einer Klasse.
" Private: Zugriff ist nur für klasseneigene Methoden möglich.

CLASS Auto DEFINITION
    PUBLIC SECTION.
        ...
    PROTECTED SECTION.
        ...
    PRIVATE SECTION.
        ...
ENDCLASS.

" Kapselung
" -> Getter & Setter

" Vererbung

" Polymorphie

" Beispiel Programm