#!bin/bash
# _           _               _          _ _ 
#| |         | |             | |        | | |
#| |     ___ | |__   ___  ___| |__   ___| | |
#| |    / _ \| '_ \ / _ \/ __| '_ \ / _ \ | |
#| |___| (_) | |_) | (_) \__ \ | | |  __/ | |
#|______\___/|_.__/ \___/|___/_| |_|\___|_|_|
#
# by vitorlobo - http://vitorlobo.blogspot.com.br // http://softwarelivre.org/lobocode
# E-mail: lobocode@hotmail.com
# Outros: #cg-br ----> irc.freenode.net
#
##########################################################

while true # Caso você queira fazer mais alguma operação, o while volta ao início.
do

# Identificar se o usuário está logado como ROOT	
uid=`id -un` 

	if [ "$uid" != "root" ]; then
		zenity --warning --text="Atenção!\nVocê não está logado como ROOT(Super-usuário).Feche o Loboshell e logue como ROOT para poder usurfruir de todas suas funcionalidades!"
	exit;


	else
		# Abertura da interface de usuário em formato lista do zenity
		file=$(zenity --width=360 --height=320 --title="Loboshell v.1.7a" --list --column="" --column="Menu" --text "Escolha um dos itens do menu a baixo: " --radiolist FALSE "Limpeza no sistema" FALSE "Remover o antigo kernel" FALSE "Otimizar o Unity" FALSE "Instalar outra interface gráfica" FALSE "Instalar Games" FALSE "Mostrar informações do sistema" FALSE "Programas úteis" FALSE "BugFix Ubuntu / Debian" FALSE "Atualizar o loboshell")


	fim=$?

	if [ "$fim" == "1" ]; then
	#Se cancelar
		zenity --info --title="Loboshell " --text="<big><b>Obrigado por usar o Loboshell</b></big>\n\nPara maiores informações, visite:\n\n<tt><a href='http://vitorlobo.blogspot.com.br'>vitorlobo.blogspot.com.br</a></tt>"  --ok-label="Fechar" 

		exit

	fi

fi

# Módulos de condicionais robustas e funçoes do programa ##############################################################

# Módulo de outra interface gráfica
	source otherUI.sh

# Módulo de games
	source loboGames.sh

# Módulo de programas úteis
	source lobopgu.sh

# Módulo de funçoes iniciais do programa
	source initfunc.sh

#######################################################################################################################

# Limpando o sistema

	if [ "$file" == "Limpeza no sistema" ]; then
		$(echo "O Loboshell irá remover arquivos desnecessários e não usados do sistema de forma segura. A recomendação é que você faça este procedimento no mínimo uma vez por semana ou mês."|zenity --text-info --title "Atenção")

		aviso1=$?

		if [ "$aviso1" == "0" ]; then
			(apt-get install -y deborphan &&  deborphan | xargs apt-get -y remove --purge && apt-get -y autoremove && apt-get clean && apt-get autoclean && apt-get -f remove) | zenity --progress --title "Limpeza no sistema" --pulsate --auto-close --auto-kill --text "Limpando o sistema de forma segura... Por favor aguarde."
	zenity --info --title "Limpeza no sistema" --text "Sistema limpo. Obrigado por usar o Loboshell."
	
fi



# Remover o antigo kernel

	elif [ "$file" == "Remover o antigo kernel" ]; then
		$(echo "O Loboshell irá verificar e remover o kernel que não está sendo mais usado pelo sistema."|zenity --text-info --title "Atenção")

		aviso2=$?

		if [ "$aviso2" == "0" ]; then
			(rmkernel) | zenity --progress --title "Removendo antigo kernel" --pulsate --auto-close --auto-kill --text "Removendo o antigo kernel... Por favor aguarde." && zenity --info --title "Kernel antigo removido" --text "Antigo kernel removido com sucesso!.\nObrigado por usar o Loboshell."

		fi
	


	# Otimizar o Unity

	elif [ "$file" == "Otimizar o Unity" ]; then
		$(echo "Seu Unity está pesado? você pode resolver este problema otimizando o mesmo. O Loboshell removerá arquivos pouco usados por usuários finais (iniciantes) e que consideravelmente ocupam uma quantidade grande de memória RAM. Estes arquivos são de uso específico como por exemplo: O unity-lens-music, unity-lens-video, applets de bluetooth e plugins e addons especificos que são inicializados no startup do unity....Pressione OK para continuar!"|zenity --text-info --title "Atenção")
	
		aviso3=$?
	
		if [ "$aviso3" == "0" ]; then
			(apt-get remove -y unity-lens-music &&  apt-get remove -y unity-lens-video &&  apt-get remove -y unity-scope-video-remote && apt-get remove -y unity-scope-musicstores &&  apt-get remove -y ubuntuone-client &&  mv /usr/bin/bluetooth-applet /usr/bin/bluetooth-applet-old && apt-get remove -y deja-dup &&  apt-get autoremove -y gnome-online-accounts &&  mv /usr/share/oneconf/oneconf-service /usr/share/oneconf/oneconf-service-old) | zenity --progress --title "Otimizando o Unity" --pulsate --auto-close --auto-kill --text "Otimizando o Unity... Por favor aguarde." && zenity --info --title "Otimizando o Unity" --text "Unity Otimizado. Obrigado por usar o Loboshell." && $(zenity  --question --title="Atenção!!!" --text="Para finalizar este procedimento, o sistema deve ser reiniciado.Deseja continuar?")


			shutdown=$?

			if [ "$shutdown" == "0" ]; then
				shutdown -r now

			fi
	
			fi


	# Informações do sistema
	elif [ "$file" == "Mostrar informações do sistema" ]; then

		sysinfo|(zenity --text-info --title="informações do sistema"  --width=560 --height=520 )

	# Atualizar Loboshell
	elif [ "$file" == "Atualizar o loboshell" ]; then
		rm -R newlobo && wget --progress=bar:force "wget https://dl.dropbox.com/u/98397345/newlobo"  2>&1 | zenity --title="Atualizando loboshell" --progress  --auto-close --width=300 --auto-kill 

		zenity --info --title "Atualizando Loboshell." --text "Loboshell atualizado com sucesso."


fi
done
