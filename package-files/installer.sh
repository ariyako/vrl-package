echo "Fetching dependencies..."
sudo apt install docker \
git gcc cmake make upx-ucl \
build-essential zlib1g-dev \
neofetch htop avahi-daemon -y |> /dev/null
echo "Picking python repos..."
sudo apt install python3 python3-pip python3-opencv python3-wheel \
python3-setuptools python3-dev python3-distutils python3-venv -y |> /dev/null
echo "Doing magic..."
sudo systemctl start avahi-daemon |> /dev/null
sudo systemctl enable avahi-daemon |> /dev/null
sudo systemctl start docker |> /dev/null
sudo systemctl enable docker |> /dev/null