cat /etc/os-release
OS=$(grep 'NAME=' | cut -d '=' -f2)
if [[ "$OS" == "Ubuntu" || "$OS" == "Debian" ]]; then
sudo apt update
sudo apt install -y apache2
elif [[ "$OS" == "CentOS Linux" || "$OS" == "RHEL" ]]; then 
sudo yum install -y httpd
else
echo "No corection version or Linux"
fi
