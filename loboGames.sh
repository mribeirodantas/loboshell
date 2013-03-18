	# Instalando games
	if [ "$file" == "Instalar Games" ]; then
		# Abertura da lista de opções de interface gráfica
		games=$(zenity --width=360 --height=320 --title="Instalar Games" --list --column="" --column="Lista de games" --radiolist FALSE "Zsnes+rooms" FALSE "Openarena" FALSE "Urban Terror" FALSE "Warcraft III - Frozen Throne" FALSE "Diablo II + LOD" FALSE "Zsnes com 11337 rooms" FALSE "Mass Effect 2" FALSE "Command & Conquer Red Alert 2" FALSE "Torchlight" FALSE "Heroes of Newerth" FALSE "Savage 2")


		# EMULADOR ZSNES + ROOMS

		if [ "$games" == "Zsnes+rooms" ]; then
			$(rooms|(zenity --text-info --title="Atenção!!!"))

			gameok=$?

			if [ "$gameok" == "0" ]; then
				(apt-get install -y zsnes)| zenity --progress --title "Instalando o Zsnes+Rooms" --pulsate --auto-close --auto-kill --text "Instalando o Zsnes... Por favor aguarde." && wget -c "https://dl.dropbox.com/u/98397345/rooms/rooms.tar.bz2" 2>&1 | sed -u 's/.*\ \([0-9]\+\)%\ \+\(.*\)$/\1\n#Downloading \2/' | zenity --progress --title="Baixando Rooms - (70/MB)" --auto-close --auto-kill --auto-close && (tar -jxvf rooms.tar.bz2) | zenity --progress --text="Extraindo rooms" --pulsate --auto-kill


				echo "Emulador e rooms instalados com sucesso.
Dica: Abra o emulador Zsnes , vá em GAME > LOAD , busque a pasta ROOMS que já se encontra na sua 'home', e divirta-se  "|(zenity --text-info --title "Emulador e rooms" --width=460 --height=170)

			fi


		# OPENARENA

		elif [ "$games" == "Openarena" ]; then
			(apt-get install -y openarena)| zenity --progress --title "Instalando o Openarena" --pulsate --auto-close --auto-kill --text "Instalando o Openarena... Por favor aguarde." && zenity --info --title "Instalando o Openarena" --text "Openarena instalado com sucesso. Obrigado por usar o Loboshell."

		# URBAN TERROR

		elif [ "$games" == "Urban Terror" ]; then
			(wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add - && deb http://archive.getdeb.net/ubuntu/ quantal-getdeb games && sudo apt-get update && apt-get install -y urbanterror)| zenity --progress --title "Instalando o Urban Terror" --pulsate --auto-close --auto-kill --text "Instalando o Urban Terror... Por favor aguarde."
			zenity --info --title "Instalando o Urban Terror" --text "Urban Terror instalado com sucesso. Obrigado por usar o Loboshell."

			# WARCRAFT III

		elif [ "$games" == "Warcraft III - Frozen Throne" ]; then
			(apt-get install -y transmission-cli)| zenity --progress --title "Instalando o Transmission-cli" --pulsate --auto-close --auto-kill --text "Instalando o transmission-cli para baixar o jogo... Por favor aguarde." && (transmission-cli magnet:?xt=urn:btih:d7aaea56347bc78e9b90e0c0d38bf4ed3ad36bec&dn=Warcraft+III+%3A+The+Frozen+Throne+%28ML10.8.2+%2B+1.26a+patch%29+-+WORK&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80&tr=udp%3A%2F%2Ftracker.istole.it%3A6969&tr=udp%3A%2F%2Ftracker.ccc.de%3A80)| zenity --progress --title "Baixando o Warcraft III - Frozen Throne (1.24GB)" --pulsate --auto-close --auto-kill --text "Baixando o Warcraft III - Frozen Throne... Por favor aguarde."
			echo "Instalando o Warcraft III - Frozen Throne com sucesso.\n
Atenção: O jogo se encontra na pasta ~/.config/transmission/resume/"|zenity --text-info 


		# DIABLO II + LOD

			elif [ "$games" == "Diablo II + LOD" ]; then
				(apt-get install -y transmission-cli)| zenity --progress --title "Instalando o Transmission-cli" --pulsate --auto-close --auto-kill --text "Instalando o transmission-cli para baixar o jogo... Por favor aguarde." && (transmission-cli magnet:?xt=urn:btih:2de728978a4b1c62b63a1cd03fb2b2979ee42418&dn=Diablo+2+With+Lord+of+Destruction+%28v1.13c%29+%28Direct+Play%29+%28Latest&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80&tr=udp%3A%2F%2Ftracker.istole.it%3A6969&tr=udp%3A%2F%2Ftracker.ccc.de%3A80)| zenity --progress --title "Baixando o Diablo II + LOD - (1.77GB)" --pulsate --auto-close --auto-kill --text "Baixando o Diablo II + LOD... Por favor aguarde."
			echo "Diablo II + LOD baixado com sucesso.\n
Atenção: O jogo se encontra na pasta ~/.config/transmission/resume/"|zenity --text-info 



		# Zsnes com 11337 rooms

			elif [ "$games" == "Zsnes com 11337 rooms" ]; then
				(apt-get install -y transmission-cli)| zenity --progress --title "Instalando o Transmission-cli" --pulsate --auto-close --auto-kill --text "Instalando o transmission-cli para baixar o jogo... Por favor aguarde." && (transmission-cli magnet:?xt=urn:btih:17eef16f4eca959d7fd097c1888c419e07f4dd7c&dn=Super+Nintendo+for+PC+%28Every+SNES+Rom+N+Emu+EVER%29+%2811337+roms%29&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80&tr=udp%3A%2F%2Ftracker.istole.it%3A6969&tr=udp%3A%2F%2Ftracker.ccc.de%3A80)| zenity --progress --title "Baixando o Zsnes com 11337 rooms - (1.73GB)" --pulsate --auto-close --auto-kill --text "Baixando o Zsnes com 11337 rooms... Por favor aguarde."
			echo "Zsnes com 11337 rooms baixado com sucesso.\n
Atenção: O jogo se encontra na pasta ~/.config/transmission/resume/"|zenity --text-info 


		# Mass Effect 2

			elif [ "$games" == "Mass Effect 2" ]; then
				(apt-get install -y transmission-cli)| zenity --progress --title "Instalando o Transmission-cli" --pulsate --auto-close --auto-kill --text "Instalando o transmission-cli para baixar o jogo... Por favor aguarde." && (transmission-cli magnet:?xt=urn:btih:131b65c35dac968cf9cb21302098c9eaf34db75e&dn=Mass+Effect+2+%28v1.02%29+%28ALL+DLC+Included%29+%28Full+Game%29&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80&tr=udp%3A%2F%2Ftracker.istole.it%3A6969&tr=udp%3A%2F%2Ftracker.ccc.de%3A80)| zenity --progress --title "Baixando o Mass Effect 2  - (10.29GB)" --pulsate --auto-close --auto-kill --text "Baixando o Mass Effect 2... Por favor aguarde."
			echo "Mass Effect 2 baixado com sucesso.\n
Atenção: O jogo se encontra na pasta ~/.config/transmission/resume/"|zenity --text-info 



		# Command & Conquer Red Alert 2

			elif [ "$games" == "Command & Conquer Red Alert 2" ]; then
				(apt-get install -y transmission-cli)| zenity --progress --title "Instalando o Transmission-cli" --pulsate --auto-close --auto-kill --text "Instalando o transmission-cli para baixar o jogo... Por favor aguarde." && (transmission-cli magnet:?xt=urn:btih:64f6137875d9c970a6e233bb707cbe6a2fcfa34e&dn=Command+%26+Conquer+Red+Alert+2+N+Yuri%5C%27s+Revenge+%28latest+patches%29&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80&tr=udp%3A%2F%2Ftracker.istole.it%3A6969&tr=udp%3A%2F%2Ftracker.ccc.de%3A80)| zenity --progress --title "Baixando o Command & Conquer Red Alert 2  - (1.29GB)" --pulsate --auto-close --auto-kill --text "Baixando o Command & Conquer Red Alert 2... Por favor aguarde."
				echo "Command & Conquer Red Alert 2 baixado com sucesso.\n
Atenção: O jogo se encontra na pasta ~/.config/transmission/resume/"|zenity --text-info 



		# Torchlight

			elif [ "$games" == "Command & Conquer Red Alert 2" ]; then
				(apt-get install -y transmission-cli)| zenity --progress --title "Instalando o Transmission-cli" --pulsate --auto-close --auto-kill --text "Instalando o transmission-cli para baixar o jogo... Por favor aguarde." && (transmission-cli magnet:?xt=urn:btih:6454824b73452f907b21e01975dae10b22ac05c6&dn=Torchlight+V1.15+%28Latest+Version%29+%28Similar+to+Diablo+2%29&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80&tr=udp%3A%2F%2Ftracker.istole.it%3A6969&tr=udp%3A%2F%2Ftracker.ccc.de%3A80)| zenity --progress --title "Baixando o Torchlight  - (814 MB)" --pulsate --auto-close --auto-kill --text "Baixando o Torchlight... Por favor aguarde."
				echo "Torchlight baixado com sucesso.\n
Atenção: O jogo se encontra na pasta ~/.config/transmission/resume/"|zenity --text-info 


		# Heroes of Newerth

			elif [ "$games" == "Heroes of Newerth" ]; then
				(apt-get install -y zsnes)| zenity --progress --title "Baixando o Heroes of Newerth" --pulsate --auto-close --auto-kill --text "Baixando o Heroes of Newerth... Por favor aguarde." && wget -c "http://dl.heroesofnewerth.com/HoNClient-3.0.0.4.sh" 2>&1 | sed -u 's/.*\ \([0-9]\+\)%\ \+\(.*\)$/\1\n#Downloading \2/' | zenity --progress --title="Baixando Rooms - (70/MB)" --auto-close --auto-kill --auto-close 



			zenity --info --title "Heroes of Newerth instalado com sucesso!"

		# Savage 2

			elif [ "$games" == "Savage 2" ]; then
				savbit=$(zenity --width=360 --height=320 --title="Instalar Games" --list --column="" --column="Lista de games" --radiolist FALSE "Savege 2 x32bits" FALSE "Savege 2 x64bits")	


				if [ "$savbit" == "Savege 2 x32bits" ]; then
					wget -c "http://savage2.s2games.com/downloads/Savage2-2.1.0.8-linux-installer.run" 2>&1 | sed -u 's/.*\ \([0-9]\+\)%\ \+\(.*\)$/\1\n#Downloading \2/' | zenity --progress --title="Baixando Rooms - (910/MB)" --auto-close --auto-kill --auto-close && chmod +x Savage2-2.1.0.8-linux-installer.run && zenity --info --title "Savage 2 instalado com sucesso!" && sudo ./Savage2-2.1.0.8-linux-installer.run

				elif [ "$savbit" == "Savege 2 x64bits" ]; then
					wget -c "http://savage2.s2games.com/downloads/Savage2-2.1.0.8-linux-x64-installer.run" 2>&1 | sed -u 's/.*\ \([0-9]\+\)%\ \+\(.*\)$/\1\n#Downloading \2/' | zenity --progress --title="Baixando Rooms - (910/MB)" --auto-close --auto-kill --auto-close && chmod +x Savage2-2.1.0.8-linux-x64-installer.run && zenity --info --title "Savage 2 instalado com sucesso!" && sudo ./Savage2-2.1.0.8-linux-x64-installer.run

				fi


			fi
		fi

