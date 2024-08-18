# edoc_devops_project

# Project Overview

The edoc_devops_project is a full-stack web application that utilizes PHP, an Apache server, and MySQL for database management. The project is containerized using Docker and deployed on a dedicated server using Jenkins.

System Components
- PHP: Backend scripting language used for server-side logic.
- Apache Server: Web server used to serve the application.
- Frontend: HTML, CSS, JavaScript used for the user interface.
- Backend: PHP scripts used for handling application logic.
- MySQL Database: Manages the application's data.

Deployment Process

# Using Jenkins Freestyle

The project is deployed on a dedicated server using Jenkins. The deployment steps are as follows:

1. SSH into the Deployment Server:
   - Jenkins connects to the target server using SSH with the following command:
   ssh -i /var/lib/jenkins/.ssh/id_rsa root@192.168.255.141
   
2. Clone the Repository:
   - The repository is cloned from GitHub to the target directory:
   cd /home/noc/edoc && git clone https://github.com/tanmayghoshdhk/edoc_devops_project.git

3. Navigate to the Project Directory:
   - Change to the project directory:
   cd edoc_devops_project

4. top the Existing Containers:
   - Docker Compose is used to stop any running containers:
   docker-compose down

5. Pull the Latest Code:
   - The latest changes from the `main` branch are pulled:
   git pull origin main

6. Build and Start the Containers:
   - The Docker containers are rebuilt and started:
   docker-compose up --build -d

## Running on the Same Server
To run the project on the same server where Jenkins is deployed, you can directly use Docker Compose:
docker-compose up --build -d

