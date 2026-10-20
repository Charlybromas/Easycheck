IF WEXIST("Standard")
   HIDE WINDOW "Standard"
ENDIF
IF WEXIST("Estándar")
   HIDE WINDOW "Estándar"
ENDIF
CLEAR SCREEN
_SCREEN.caption = "Control de Asistencias del Personal"
_SCREEN.icon = "z:\dnssoftware\images\huellaok.ico"
_SCREEN.maxbutton = .f.
_SCREEN.minbutton = .f.
_SCREEN.windowstate = 2
_SCREEN.autocenter = .T.
wruta = FULLPATH(CURDIR())
SET PROCEDURE TO Z:\Tools\Utiles, Z:\Tools\gencfdi
CLEAR SCREEN
SET TALK OFF
SET STATUS OFF
SET STATUS BAR OFF
SET SEPARATOR TO ','
SET POINT TO '.'
SET DATE french
SET EXCLUSIVE OFF
SET PATH TO &wruta
*SET SYSMENU OFF
SET DELETED ON
DO Mnu_Check.mpr
DO FORM Frm_Checador.Scx
READ EVENTS
CLOSE DATABASES
*SET SYSMENU TO DEFAULT
ON SHUTDOWN
RETURN