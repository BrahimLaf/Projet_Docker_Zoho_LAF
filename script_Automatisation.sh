# Update the package list
apt-get update

# Install Docker
apt-get install -y docker.io

# Add the current user to the docker group, so you don't have to use sudo to run Docker commands

useradd -S -D  Brahim_laf
usermod -aG docker Brahim_laf

# Install Docker-Compose.yml
curl -L "https://github.com/BrahimLaf/Projet_Docker_Zoho_LAF/blob/master/docker-compose.yml"$ -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

# Navigate to the directory containing the Docker Compose file
cd ~/Projet_Docker_Zoho_LAF/docker-compose.yml

# Build and start the containers with Docker Compose
docker-compose up -d --build
