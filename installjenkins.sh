o "1. updating.............."
sudo apt update

echo "2. Installing openjdk-21.............."
sudo apt install -y openjdk-21-jdk

echo "3. Adding Jenkins package to  apt list.............."
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
	  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
 echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
	   https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
	     /etc/apt/sources.list.d/jenkins.list > /dev/null
   
 echo "4. updating apt and Installing Jenkins.............."  
 sudo apt-get update
 sudo apt-get install jenkins
