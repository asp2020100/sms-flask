#bin bash!

# Install the dependencies

sudo su
sudo apt-get update
sudo apt-get upgrade -y

curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list

sudo apt update
sudo apt install caddy -y 
sudo apt install python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools -y
sudo apt install python3-venv -y
# mysqlclient Requrement
sudo apt-get install python3-dev default-libmysqlclient-dev build-essential pkg-config -y
# Install Screen 
sudo apt-get install screen -y


# Git Clone 
git clone https://github.com/asp2020100/sms-flask.git
cd sms-flask

# Create a python virtual environment
python3 -m venv env

# Activate Venv
source env/bin/activate

# Install Flask and other packages in the virtual environment
pip install -r requirements.txt

# Clear Screen 
Clear
# End
echo "Cloud is Ready to Build"

sleep 5
# rm -rf install.sh
