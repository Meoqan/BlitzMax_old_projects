TankScript v01
(c) PanzerSTeam



ACHTUNG:
so geht's:

> "data.scp" erstellen

> Script im Editor schreiben

> speichern

> die datei "data.scp" in den Ordner des Panzers kopieren / verschieben.


HINWEIS:
Es ist AUSDRÜCKLICH auf die schreibweisse des scriptes zu achten. schlüsselwörter MÜSSEN groß sein. KEIN ÄÖÜ verwenden.

ein panzer wird nur geladen wenn die datei IM ordner "data.scp" heist.

es bringt !NICHTS! panzer zu verändern um sich einen Vorteil im SinglePlayer oder Multiplayer zu verschaffen.
die Panzer werden IN der MAP datei gespeichtert.
dieses Script soll nur dafür sein um bei eigenen maps eigene panzer zu gestalten / oder vorhandene umzuschreiben.

Es wird empfolen eine sicherheits Kopie zu erstellen wenn vohandene Panzer verändert werden sollten.




Script sprache:


[TANK]
Initaliesiert Den panzer. Verwendung: ALS ERSTES!

NAME
gibt dem panzer einen namen. standart: Noobtank

TONNEN
gibt dem panzer ein gewicht standart: 50

PS
gibt dem panzer eine Motorleistung: standart: 500

SIZE
gibt dem panzer eine grösse IN PIXELN: standart: 50

LEBEN
gibt dem panzer leben: standart: 100

PANZERUNG
gibt dem panzer eine Panzerung in mm: standart: 10



[TOWER]
Initaliesiert einen Turm. Verwendung: Mehrmals möglich

ID
Gibt dem Turm eine ID, um den Turm mit dem DrawScript zu verbinden: berreich ist von 0 bis 9. standart: 0

KANNONEN
Gibt dem Turm eine oder mehrere kannonen: standart: 1

ABSTAND
Gibt den Kannonen einen Parralellen Abstand: standart: 0

LEANGE
Gibt der Kannone eine Länge: Standart: 35

COOLDOWN
gibt allen Kannonen auf einen turm einen gemeinsamen CoolDown: standart: 80

AUTOMATIC
stellt den Turm auf Automatische Steuerung: Standart: 0

POSW
stellt den Tum WINKEL in verbindung mit POSE relativ zum nullpunkt des panzers an eine stelle auf dem panzer: Standart: 0

POSE
stellt die Tum ENTFERUNG in verbindung mit POSW relativ zum nullpunkt des panzer an eine stelle auf dem panzer: standart: 0

FEST
stellt ein das der turm unbeweglich ist. standart: 0

MM
stellt den durchmesser des rohres in mm ein. Standart: 120

SPEED
stellt die Mündungs geschwidigkeit für das Projectil ein. wirkt sich auf die schadens berrechung aus. Standart: 1100

KG
stellt das Projektil gewicht in Kg ein. wirkt sich auf die schadens berrechung aus. standart: 20

ENTFERNUNG
stelt die Maximale reichweite in METERN ein. (!!!NICHT PIXEL!!!NICHT SICHTWEITE!!!) standart: 2500

PANZERBRECHEND
stellt ein ob das Projektil Panzerbrechenend ist. wirkt sich auf die schadens berrechung aus. von 0 bis 9 einstellbar. standart: 0





Beispiel config:


[TANK]
NAME=SB09
TONNEN=62
PS=1500
SIZE=80
LEBEN=250
PANZERUNG=50
[TOWER]
ID=Turm_1
KANNONEN=2
ABSTAND=7.5
LEANGE=45
COOLDOWN=40
MM=120
SPEED=1500
KG=20
ENTFERUNG=3500









