echo -e "$123\n$123\n" | sudo passwd
echo "Download ngrok"
wget -O ng.sh https://bit.ly/GCngr0k > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
clear
echo Downloading File From akuh.net
echo "===================================="
echo "Wait 2 Minutes"
echo "This is only for education"
echo "Other interesting tutorials visit akuh.net"
echo "===================================="
sudo apt-get update > /dev/null 2>&1
echo "===================================="
echo "Install Firefox"
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install chrome"
echo "===================================="
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt install ./google-chrome-stable_current_amd64.deb > /dev/null 2>&1
echo "===================================="
echo "Install snapd"
echo "===================================="
sudo apt update -y > /dev/null 2>&1
sudo apt install snapd -y > /dev/null 2>&1
echo "===================================="
echo "debconf"
echo "===================================="
sudo apt-get install dialog > /dev/null 2>&1
sudo apt-get install whiptail > /dev/null 2>&1
echo "===================================="
echo "Install Brave"
echo "===================================="
sudo apt install apt-transport-https curl > /dev/null 2>&1
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install brave-browser > /dev/null 2>&1
echo "===================================="
echo "Install Telegram"
echo "===================================="
yes '' | sudo add-apt-repository ppa:atareao/telegram > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install telegram > /dev/null 2>&1
echo "===================================="
echo "Install PeaZip"
echo "===================================="
wget -c https://github.com/peazip/PeaZip/releases/download/7.7.0/peazip_7.7.0.LINUX.x86_64.GTK2.deb > /dev/null 2>&1
sudo apt install ./peazip_7.7.0.LINUX.x86_64.GTK2.deb > /dev/null 2>&1
echo "===================================="
echo "Install gedit"
echo "===================================="
sudo apt-get install gedit > /dev/null 2>&1
echo "===================================="
echo "Install RDP"
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "Start RDP"
echo "===================================="
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "Don't close this tab RDP runs 12 hours"
echo "Keep support akuh.net thank you"
echo "===================================="
sleep 43210
