# Funções iniciais ####################################################################################################

# Funçao responsavel pela leitura do arquivo rooms.txt
function rooms {

while read line 
do  
   echo -e "$line"
done < rooms.txt


}

# Função responsavel pela remoção do kernel antigo
function rmkernel {
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs  apt-get -y purge

}

# Função que disponibiliza informações do sistema
function sysinfo {

echo "Seu sistema é composto por:"
echo
echo "Distribuição :" ; echo `lsb_release -d|awk -F: '{ print $2 }'`
echo "-----------------------------------------------------"
echo "Versão do Kernel e Arquitetura : " ; uname -rm
echo "-----------------------------------------------------"
echo "Processador :" ; cat /proc/cpuinfo | grep -m 1 "model name" | awk -F: '{ print $2 }'
echo "-----------------------------------------------------"
echo "MHZ :" ; cat /proc/cpuinfo | grep -m 1 "cpu MHz" | awk -F: '{ print $2 }'
echo "-----------------------------------------------------"
echo "Swap :" ; echo "`(free -m | grep Swap | awk -F" " '{ print $2 }')` MB"
echo "-----------------------------------------------------"
echo "Total de memória RAM :" ; echo "`(free -m | sed '2!d' | awk '{print $2}')` MB"
echo "-----------------------------------------------------"
echo "Placa de vídeo :" ; lspci |grep VGA
echo "-----------------------------------------------------"
echo "Placa de som :" ; lspci |grep Audio
echo "-----------------------------------------------------"
echo "Quantidade de partições :" ; (awk '{print $4}' /proc/partitions |\
sed ':A ; $!N ; s/\n/ /g ; tA ; s/name// ; s/^[ \t]*//')
echo "-----------------------------------------------------"

}

#####################################################################################################################

