REPORT ZCALCREPORT.
*&Input Value auf dem Bildschirm. PARAMETERS erzeugt ein Eingabefeld
PARAMETERS zahl1 TYPE i.
PARAMETERS zahl2 TYPE i.
*& 4 Auswahlbuttons für div. Rechenoperationen. gr= Gruppe
PARAMETERS add RADIOBUTTON GROUP gr1.
PARAMETERS subtract RADIOBUTTON GROUP gr1.
PARAMETERS multiply RADIOBUTTON GROUP gr1.
PARAMETERS divide RADIOBUTTON GROUP gr1.
*&
 add ist gleich X, weil wenn add ausgewählt wird, wird meiner Variable eine Instanz zugewiesen.
*& Es wird geprüft welche Auswahl getroffen wurde-
*& zahl1 sichert das Ergebnis.

IF add = 'X'.
	add zahl2 to zahl1.
ENDIF.

IF subtract = 'X'.
	subtract zahl2 to zahl1.
ENDIF.

IF multiply = 'X'.
	multiply zahl1 to zahl2.
ENDIF.

IF divide = 'X'.
	divide zahl1 to zahl2.
ENDIF.