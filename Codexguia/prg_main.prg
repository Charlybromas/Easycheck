SET PROCEDURE TO Z:\vFoxpro9\DnsSoftware\Prgs\Utiles, Z:\vFoxpro9\DnsSoftware\Prgs\gencfdi, Z:\vFoxpro9\DnsSoftware\Prgs\procs
*PUBLIC m.Root, m.Nivel, m.Area, m.Vigencia, m.Activo
IF WEXIST("Standard")
   HIDE WINDOW "Standard"
ENDIF
IF WEXIST("Estándar")
   HIDE WINDOW "Estándar"
ENDIF
_SCREEN.picture = "Z:\vFoxpro9\DnsSoftware\Images\FondoDns.jpg"
_SCREEN.windowstate = 0
_SCREEN.closable = .t.
_SCREEN.caption = "Control y Movimientos de Personal SEPUEDE"
_SCREEN.icon = "Z:\vFoxpro9\DnsSoftware\Images\BD.ico"
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
DO FORM Z:\vFoxpro9\DnsSoftware\Forms\Frm_Loginx.scx
DO CASE
   CASE _SCREEN.login=0
		CLOSE DATABASES
		SET SYSMENU TO DEFAULT
		ON SHUTDOWN
		RETURN
   CASE _SCREEN.login=1
		CLOSE DATABASES
		SET SYSMENU TO DEFAULT
		ON SHUTDOWN
		RETURN
   CASE _SCREEN.login=4
		DO Mnu_Resources.mpr
		READ EVENTS
		CLOSE DATABASES
		SET SYSMENU TO DEFAULT
		ON SHUTDOWN
		RETURN
ENDCASE 
RETURN 
ENDPROC 

