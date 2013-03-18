
# Instalar outra interface gráfica

if [ "$file" == "Instalar outra interface gráfica" ]; then

	# Abertura da lista de opções de interface gráfica
	de=$(zenity --width=360 --height=320 --title="Instalar interface gráfica" --list --column="" --column="Interface gráfica" --radiolist FALSE "Mate" FALSE "Xfce" FALSE "Lxde" FALSE "Kde" FALSE "E17" FALSE "Gnome 3x" FALSE "Remover o Unity")

	if [ "$de" == "Mate" ]; then
		#Se for mate
		(add-apt-repository "deb http://packages.mate-desktop.org/repo/ubuntu quantal main" &&  apt-get update &&  apt-get install -y mate-archive-keyring &&  apt-get update &&  apt-get install -y mate-core &&  apt-get install -y mate-desktop-environment) | zenity --progress --title "Mate" --pulsate --auto-close --auto-kill --text "Instalando o Mate... Por favor aguarde."
	zenity --info --title "Mate" --text "Mate instalado com sucesso. Obrigado por usar o Loboshell."


	# Instalar o xfce
	elif [ "$de" == "Xfce" ];then
		(apt-get install -y xfce4) | zenity --progress --title "Xfce" --pulsate --auto-close --auto-kill --text "Instalando o Xfce4... Por favor aguarde."
		zenity --info --title "Xfce" --text "Xfce instalado com sucesso. Obrigado por usar o Loboshell."

	# Instalar o Lxde
	elif [ "$de" == "Lxde" ];then
		(apt-get install -y lxde) | zenity --progress --title "Lxde" --pulsate --auto-close --auto-kill --text "Instalando o Lxde... Por favor aguarde."
		zenity --info --title "Lxde" --text "Lxde instalado com sucesso. Obrigado por usar o Loboshell."

	# Instalar o Kde
	elif [ "$de" == "Kde" ];then

		(apt-get install -y kde-standard) | zenity --progress --title "Kde" --pulsate --auto-close --auto-kill --text "Instalando o Kde... Por favor aguarde."
		zenity --info --title "Kde" --text "Kde instalado com sucesso. Obrigado por usar o Loboshell."

	# Instalar o E17
	elif [ "$de" == "E17" ];then

		(apt-add-repository ppa:hannes-janetzek/enlightenment-svn &&  apt-get update &&   apt-get install -y e17) | zenity --progress --title "E17" --pulsate --auto-close --auto-kill --text "Instalando o E17... Por favor aguarde."
		zenity --info --title "E17" --text "E17 instalado com sucesso. Obrigado por usar o Loboshell."

	# Instalar o Gnome 3x
	elif [ "$de" == "Gnome 3x" ];then
:
		(apt-get install -y ubuntu-gnome-desktop ubuntu-gnome-default-settings &&  apt-get install -y gnome-documents gnome-boxes &&  add-apt-repository ppa:gnome3-team/gnome3 &&  apt-get remove -y overlay-scrollbar*) | zenity --progress --title "Gnome 3x" --pulsate --auto-close --auto-kill --text "Instalando o Gnome 3x... Por favor aguarde."
		zenity --info --title "Gnome 3x" --text "Gnome 3x instalado com sucesso. Obrigado por usar o Loboshell."

	# Remover o Unity
	elif [ "$de" == "Remover o Unity" ];then

				(apt-get remove -y ubuntu-settings) | zenity --progress --title "Removendo o Unity" --pulsate --auto-close --auto-kill --text "Removendo o Unity... Por favor aguarde."
						zenity --info --title "Removendo o Unity" --text "Unity removido com sucesso. Obrigado por usar o Loboshell."


					fi
				fi

