echo "===================================="
echo "Download windows files"
echo "===================================="
wget -O litexp.qcow2 https://bit.ly/litegin1
echo "===================================="
echo "Download ngrok"
echo "===================================="
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
echo "===================================="
echo Downloading File From akuh.net
echo "===================================="
sudo apt-get update > /dev/null 2>&1
apt-get install qemu > /dev/null 2>&1
echo "===================================="
echo "Wait"
echo "Starting Windows"
echo "===================================="
echo RDP Address:
echo "===================================="
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Ctrl+C To Copy"
echo "Wait 1-2 minute to finish bot"
echo "Dont Close This Tab"
echo "Please support akuh.net thank you"
echo "Default User: Administrator"
echo "Default Password: Thuonghai001"
echo "===================================="
echo "===================================="
qemu-system-x86_64 -hda litexp.qcow2 -m 8G -smp cores=30 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic > /dev/null 2>&1
sleep 43200

echo "===================================="
