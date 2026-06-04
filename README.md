Instruction documented: https://medium.com/@solimankhulna/run-opencart-in-docker-container-multiple-versions-at-a-time-9bc9992bfe84

Run OpenCart in Docker Container ( Multiple versions at a time)

Note: This documentation will be easy for linux users but Windows users also will be able to use if they have their system pre configured to use docker with Docker Desktop

Introduction: Running different version of OpenCart in same computer can be tricky by using any software like Xampp or Wampp. But we can make it easy if we use docker container. Here this guide will explain and guide to successfully run multiple OpenCart inside docker.

# Step 1: Download OpenCart resources from the follwing link. https://www.opencart.com/index.php?route=cms/download/history

All available versions are listed here:

# Step 2: Make a directory and colone git repository:

```
mkdir opencart
cd opencart
git clone https://github.com/sfaragy/opencart_in_docker
```
Now extract the files from previusly downloadd opencart. Only extract the contents inside upload folder and extract it inside src folder.

In project directory: src/opencart-version

# Step 3: Run the following command in root directory opencart:

```
docker-compose build
docker-compose up -d
```

# Step 4: You are ready to start install OpenCart:

http://localhost/opc3.0.4.0 [this folder opc3.0.4. might be different]
Visit your project at http://localhost/opencart-Version-Folder, and PhpMyAdmin will be available at http://localhost:8080.

To stop the services please use : ```docker-compose down```


# Step 5: Install OpenCart: Visit http://localhost/opencart-Version-Folder

Click to continue

# Step 6: Please make sure all required setup are green. In this example one extension was missing and the config files were missing.

Config files basically in the opencart folder and inside it admin folder. Need to rename config-dist.php to config.php

Rename the files name config-dist.php to config.php

After fix the issue it should be something like this:

# Setp 7: Please set the DB configuration and admin. Please make sure the following setup:

host: db
username: opencart
password: secret
database: opencart

# Step 8: Conclusion: That’s it. It’s time to test admin as well as front end of OpenCart which is running inside docker container.

If you have any query or need any assistance please feel free to contact us solimankhulna@gmail.com or visit www.bangloss.com
