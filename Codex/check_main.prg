SET PROCEDURE TO Z:\vFoxpro9\DnsSoftware\Prgs\Utiles, Z:\vFoxpro9\DnsSoftware\Prgs\gencfdi, Z:\vFoxpro9\DnsSoftware\Prgs\procs
*PUBLIC m.Root, m.Nivel, m.Area, m.Vigencia, m.Activo
IF WEXIST("Standard")
   HIDE WINDOW "Standard"
ENDIF
IF WEXIST("Estándar")
   HIDE WINDOW "Estándar"
ENDIF
_SCREEN.picture = "Z:\vFoxpro9\DnsSoftware\Imgs\EasyDns02-Check.jpg"
_SCREEN.windowstate = 0
_SCREEN.closable = .t.
_SCREEN.caption = "Control y Emision de Cheques - Municipio de Contla de Juan Cuamatzi"
_SCREEN.icon = "Z:\vFoxpro9\EasyCheck\Imgs\easycheck.ico"
_SCREEN.width = 1500
_SCREEN.height = 730
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
SET PATH TO &wruta, db
SET SYSMENU OFF
SET DELETED ON
SET CONFIRM ON 
DO FOXYPREVIEWER.APP 
DO FORM Z:\vFoxpro9\DnsSoftware\Forms\Frm_Login.scx
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
		DO Check_Mnu.mpr
		READ EVENTS
		CLOSE DATABASES
		SET SYSMENU TO DEFAULT
		ON SHUTDOWN
		RETURN
ENDCASE 
RETURN 
ENDPROC 

