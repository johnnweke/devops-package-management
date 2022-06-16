
# 1. Install Java JDK 1.8+ and other software as a pre-req for maven to run (git, vim, tree, nano, wget)

sudo hostname maven
cd /opt
sudo yum install wget vim nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version

# 2. Download, extract and Install Maven

# Download the Maven Software
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip
sudo unzip apache-maven-3.8.6-bin.zip
sudo rm -rf apache-maven-3.8.6-bin.zip
sudo mv apache-maven-3.8.6/ maven

# 3. Set Environmental Variable - For Specific User eg ec2-user

# (Old way - vi ~/.bash_profile  # and add the lines below)
# (New Way uses Echo - listed in commands below)

echo "export M2_HOME=/opt/maven" >> ~/.bash_profile
echo "export PATH=$PATH:$M2_HOME/bin" >> ~/.bash_profile

# 4. Refresh the profile file and Verify if maven is running

source ~/.bash_profile
mvn -version
