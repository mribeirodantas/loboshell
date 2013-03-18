	# Programas úteis
	if [ "$file" == "Programas úteis" ]; then
		pgu=$(zenity --width=360 --height=320 --title="Programas úteis" --list --column="" --column="Lista de programas" --radiolist FALSE "Programação" FALSE "Web" FALSE "Multimedia" FALSE "Design" FALSE "Nvidia Drivers" FALSE "ATI Drivers")

		if [ "$pgu" == "Programação" ]; then
			
			prog=$(zenity --width=360 --height=320 --title="Programas úteis" --list --column="" --column="Lista de programas" --radiolist FALSE "Sublime Text 2" FALSE "Vim" FALSE "Emacs" FALSE "SciTe" FALSE "Geany" FALSE "Code::blocks" FALSE "Anjuta" FALSE "Kdevelop" FALSE "Jedit" FALSE "BlueFish" FALSE "NinjaIDE" FALSE "MonoDevelop" FALSE "QTCreator" FALSE "Eclipse" FALSE "NetBeans" FALSE "Aptana Studio" FALSE "PyCharm" FALSE "Editra" FALSE "LAMP" FALSE "Medit" FALSE "Terminator")


		elif [ "$pgu" == "Web" ]; then
			
			web=$(zenity --width=360 --height=320 --title="Programas úteis" --list --column="" --column="Lista de programas" --radiolist FALSE "Google Chrome" FALSE "Firefox" FALSE "Opera" FALSE "Midori" FALSE "Skype" FALSE "Pidgin" FALSE "Xchat" FALSE "Kvirc" FALSE "Konversation" FALSE "Dropbox" FALSE "Gwibber" FALSE "FlashPlayer" FALSE "Gnash" FALSE "Java" FAFALSE "Haguichi" FALSE "qBittorrent" FALSE "Deluge" FALSE "Transmission")


		elif [ "$pgu" == "Multimedia" ]; then
			
			media=$(zenity --width=360 --height=320 --title="Programas úteis" --list --column="" --column="Lista de programas" --radiolist FALSE "VLC+codecs" FALSE "Audacious" FALSE "Audacity" FALSE "Amarok" FALSE "Clementine" FALSE "MyDesktopRecorder" FALSE "Kdenlive" FALSE "OpenShot" FALSE "K3b" FALSE "Brasero" FALSE "Gscreenshot" FALSE "Ksnapshot" FALSE "Devede" FALSE "Avidemux" FALSE "Lives")



		elif [ "$pgu" == "Design" ]; then
			
			design=$(zenity --width=360 --height=320 --title="Programas úteis" --list --column="" --column="Lista de programas" --radiolist FALSE "Blender" FALSE "Gimp" FALSE "Inkscape" FALSE "Krita" FALSE "Pinta" FALSE "Uniconvertor")

		fi
	fi

