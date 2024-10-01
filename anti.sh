#!bin/sh
connect=$(netstat -alntp | grep :443 | wc -l)
if [ $connect -lt 1000 ]
then
  cat /root/status.txt | grep "block" && bash <(curl -Ls https://raw.githubusercontent.com/dsaiuvsadv/daukute/main/block-off.sh) && echo "allow" > /root/status.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status.txt | grep "allow" && bash <(curl -Ls https://raw.githubusercontent.com/dsaiuvsadv/daukute/main/block-on.sh) && echo "block" > /root/status.txt && clear && echo -e "ANTI DDOS ON"
fi
