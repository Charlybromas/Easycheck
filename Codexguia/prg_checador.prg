SET PROCEDURE TO Z:\vFoxpro9\DnsSoftware\Prgs\Utiles, Z:\vFoxpro9\DnsSoftware\Prgs\gencfdi
PUBLIC m.Root, m.Nivel, m.Area, m.Vigencia, m.Activo
DEACTIVATE WINDOW SCREEN && Desactiva la ventana de VFP.
IF WEXIST("Standard")
   HIDE WINDOW "Standard"
ENDIF
IF WEXIST("Estándar")
   HIDE WINDOW "Estándar"
ENDIF
SET TALK OFF
SET STATUS OFF
SET NOTIFY OFF
SET MULTILOCKS ON
SET CONFIRM ON  
SET SAFETY OFF 
SET STATUS BAR OFF
SET DELETED ON
SET SEPARATOR TO ','
SET POINT TO '.'
SET DATE french
SET EXCLUSIVE OFF
SET SYSMENU OFF
_screen.hide
_screen.visible= .F.
ON SHUTDOWN DO closeforms
Application.Visible = .F.
CLEAR
DO FORM Z:\vFoxpro9\EasyResources\Codex\Frm_Checador.Scx
READ EVENTS
*SET SYSMENU TO DEFAULT
ON SHUTDOWN
CLEAR EVENTS 
Application.Visible = .T.
RETURN 