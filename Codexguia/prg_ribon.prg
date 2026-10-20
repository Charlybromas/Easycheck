SET CLASSLIB TO Z:\vFoxpro9\Dnssoftware\clases\ribbonbar ADDITIVE 

_SCREEN.maxbutton = .f.
_SCREEN.minbutton = .f.
_SCREEN.autocenter = .T.
wdiract = FULLPATH(CURDIR())
wruta = FULLPATH(CURDIR())
wruta = wruta+"Informes"
ON SHUTDOWN DO closeforms
CLEAR SCREEN
SET TALK OFF
SET STATUS OFF
SET STATUS BAR OFF
SET SEPARATOR TO ','
SET POINT TO '.'
SET DATE french
SET EXCLUSIVE OFF
SET PATH TO &wruta, db, dbassist
SET SYSMENU OFF
SET DELETED ON
SET CONFIRM ON 
DO FOXYPREVIEWER.APP 
Ribbon1 = CreateObject("Ribbon")
READ EVENTS
RETURN 
ENDPROC 

