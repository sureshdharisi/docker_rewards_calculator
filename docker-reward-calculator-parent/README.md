## How to use the application

### Prerequisites to execute below application:

1. Docker
2. Java 17 (If we want to modify the code)
3. Maven (If we want to modify the code)

### Steps to use the application
#### Create the postgress databases.

1.1 Docker compose contains postgress image to spinup the postgress database.

### How to create databases in postgress?

#### Checkout the code from git in any of the directory

```
git clone https://github.com/sureshdharisi/docker_rewards_calculator.git
```

#### Open command prompt and go to the project location

Example:
```
cd E:\CODE_BASE\DockerRewardsCalculator\docker_rewards_calculator\docker-reward-calculator-parent
```

#### Run the docker compose
```
docker compose up
```
Note: Run the below command to remove the existing docker instances
```
docker compose down
```

#### Now open PGAdmin console using the url *http://localhost:5050/*

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/pgAdming_login.PNG?raw=true)

Use the below credentials:
```
username: test_records_calculator@gmail.com
password: root
```
#### Now pg admin home page will open

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/pgAdming_home.PNG?raw=true)

#### Now create the new connection to connect with postgress database.

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/create_new_server.png?raw=true)

#### Fill the details

##### General Tab:

Name: You can define your own name. Ex: Rewards-Calculator

##### Connection Tab:

username: admin
password: admin
Hostname/address:

To find the host name please use below commands

##### Run below docker command to know the container details

```
docker ps
```
This will give you the container details

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/docker_ps_response.PNG?raw=true)

Now you will get the container id. Ex: 68bb358c63d7

##### Now run the below command to get the container ip address (Use linux command prompt. Ex: Git Bash)
```
 docker inspect 68bb358c63d7 | grep IPAddress
```
This will give the IP address

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/docker_ps_hostname.PNG?raw=true)

Use the hostname for the connection

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/postgress_connection.PNG?raw=true)


Click on save. Now connection will be established.

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/pgAdming_home_2.PNG?raw=true)

#### Now create the databases for "customer-transactions" and "rewards-config"

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/create_new_database.png?raw=true)

##### Click on create database and provide the name as "customer-transactions"


![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/customer-transactions_database.png?raw=true)

Click on save. Now database will create.

##### Create the "rewards-config" database in similar way.

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/database_summery.PNG?raw=true)

#### Now execute the SQL queries to create tables and sequences

##### how to open query tool

Righ click on database > Query Tool

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/open_query_tool.PNG?raw=true)


#### rewards-config

##### Create new sequence

```sql
CREATE SEQUENCE rewards_config_seq START WITH 1 INCREMENT BY 1;
```
##### Create new table

```sql
CREATE TABLE REWARDS_CONFIG
(ID INTEGER NOT NULL,
LOWER_LIMIT INTEGER NOT NULL,
UPPER_LIMIT INTEGER ,
POINTS INTEGER NOT NULL,
CREAE_DT DATE,
UPDATE_DT DATE,
PRIMARY KEY (ID));
```

Click on execute

#### CUST_TRANSACTIONS

##### Create new sequence

```sql
CREATE SEQUENCE cust_transaction_seq START WITH 1 INCREMENT BY 1;
```
##### Create new table

```sql
CREATE TABLE CUST_TRANSACTIONS
(ID INTEGER NOT NULL,
CUSTMER_ID VARCHAR(50) NOT NULL,
TRANSACTION_AMT INTEGER ,
TRANSACTION_DT DATE ,
CREAE_DT DATE,
PRIMARY KEY (ID));
```

Click on execute

Here is the summary:

![alt text](https://github.com/sureshdharisi/docker_rewards_calculator/blob/develop/docker-reward-calculator-parent/images/customer-transactions_queries.PNG?raw=true)
