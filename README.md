# Projet Final Docker/BI : Zoho Analytics On-Premise.

## Projet Zoho Analytics On-premise, Postgres and pgadmin

### 1. Objectif of project. 

The objective of mon project is to use a Busness intelligence solution Zoho Analytics On-Promise and connecting it at a RDBMS containing a database (Postgres) via Docker to do the containerization.

--> Zoho Analytics is a self-service BI and data analytics software that lets you analyze your data, create stunning data visualizations, and discover hidden insights in minutes

--> PostgreSQL is a powerful, open source object-relational database system that uses and extends the SQL language combined with many features that safely store and scale the most complicated data workloads. 

--> PGAdmin is a web-based Graphical User Interface (GUI) management application used to communicate with Postgres and derivative relational databases on both local and remote servers.

### 2. Architecture.

This image represents my architecture that I used for the realization of mon project. Indeed, I used Zoho Analytics On-Premose, Postgres and PgAdmin linked via a docker-compose.yml file on a microsoft azure virtual machine. I then, using the Zoho Analytics On-premise, visualized the data from database in Postgres.
![image](https://user-images.githubusercontent.com/115103788/212050867-59c8939c-0207-40d8-84ee-541649408861.png)

### 3. Steps to deploy Zoho Analytics On-Premise, Postgres and pgAdmin

   ###### - Step 1. Launch docker compose .yml: 
       Sudo docker-compose -f Docker-compose.yml up -d
![image](https://user-images.githubusercontent.com/115103788/211642843-8beb1ae3-e286-409a-9a91-0842d6c35936.png)

   ###### - Step 2. Check the containers that are running using the following command: 
        docker ps
![image](https://user-images.githubusercontent.com/115103788/211643113-77462843-2cf4-4093-bc9f-19f48a152f9f.png)

### Deploy Postgres and pgAdmin

I start the PostgreSQL and pgAdmin containers in the background, and access the pgAdmin web interface by opening a web browser and navigating to =(https://serverIPaddress:6081). 

![image](https://user-images.githubusercontent.com/115103788/211952064-ec3714d7-1751-4e3c-ac17-f8815643223c.png)
![image](https://user-images.githubusercontent.com/115103788/211952079-ec744499-98fa-4896-930a-aac7d92faaa9.png)

### Zoho Analytics On-Premise
###### Execute an interactive bash shell on the downloaded container using the following command:
        sudo docker exec -it projet_zohoanalytics-Web-1 bash
![image](https://user-images.githubusercontent.com/115103788/211643178-a5d963bf-7538-45b1-8977-e8aecde4f5a6.png)

###### Before starting the application, switch to the Zoho/Analytics/bin repository. cd Zoho/ cd Analytics/ cd bin/
![image](https://user-images.githubusercontent.com/115103788/211643408-5b998285-2e56-4614-8542-56d8c44ddba3.png)

###### Start Zoho Analytics On-Premise using the command: 
        nohup sh app_ctl.sh run &
![image](https://user-images.githubusercontent.com/115103788/211643492-4e9416d5-355f-46aa-b39c-1a1cd4d7ddd9.png)

###### Once the application has started, you can access the application from a web-browser using the following URL https://serverIPaddress:8443.
        https://serverIPaddress:8443. Important : Please be patient, it takes some time (2 ?? 3 minutes) to start the server.
###### Use the following credentials in the screen that appears to login to Zoho Analytics On-Premise the default password upon login is :
    Username: admin
    Password: admin
![image](https://user-images.githubusercontent.com/115103788/211643664-3d8e9beb-6af1-4348-a9b0-5c4a001b2357.png)
![image](https://user-images.githubusercontent.com/115103788/211643721-810b07e4-0ce3-4b18-97fd-a8a98ef4d31d.png)
![image](https://user-images.githubusercontent.com/115103788/211952091-f19152fc-af20-4b5d-a690-0da535dff6c9.png)
![image](https://user-images.githubusercontent.com/115103788/211952104-0ef6d8e3-0b1d-4105-ab0c-94e62e2c6509.png)
![image](https://user-images.githubusercontent.com/115103788/211952112-67d21d54-4c28-4a31-85ff-24f85800cb31.png)

![image](https://user-images.githubusercontent.com/115103788/211952127-70962e01-9d09-4efa-beb4-62f1c5cc14d9.png)
![image](https://user-images.githubusercontent.com/115103788/211952141-0759fdad-0cf4-4843-9b04-9b65ffaf58cc.png)

![image](https://user-images.githubusercontent.com/115103788/211647597-1db76ae3-8a54-4c90-883c-fdb161db7f75.png)

![image](https://user-images.githubusercontent.com/115103788/211647626-1809e348-2c13-4648-80f7-461c3f0cb732.png)

###### To stop the application, use the following command:
       sh app_ctl.sh shutdown
