Welcome to your new dbt project!

# ETL DBT Google Big Query Data Warehouse
Extract data from csv, Transform and load to Google Big Query using Data Build Tool (DBT)

# Prerequisite
1.  Have a Big Query Account
2.  Have install python3 and pip Library
3.  Using Ubuntu 20.04 on this Project
4.  Have install Jupyter Notebook for Transform csv data

# Hands On 
##  Install dbt-bigquery
1.  Create virtual environment ( for isolate the project )
   
   ```
    python3 -m venv dbt-project
   ```
2.  Acivate virtual environment
   ```
   source dbt-project/bin/activate
   ```
3.  Install using pip command
   ```
   python3 -m pip install dbt-bigquery
   ```
    
##  Check Dbt Version
   ```
   dbt --version
   ```
##  Setup dbt big query init 
1.   Run code below to initiate project 
   ```
   dbt init online_store
   ```
2.   Follow instruction below
   
   Which database would you like to use?
   [1] bigquery

      (Don't see the one you want? https://docs.getdbt.com/docs/available-adapters)

      Enter a number: 1

      [1] oauth
      [2] service_account
      Desired authentication method option (enter a number): 2

      keyfile (/path/to/bigquery/keyfile.json): /home/abay/conf/ff-ngulik-xxxxx.json (Change with your service account key file from Gcp)

      project (GCP project id): ff-ngulik-xx (change with your Project ID in GCP)

      dataset (the name of your dbt dataset): dwh_online_store (change with your dataset in big query)

      threads (1 or more): 1
      job_execution_timeout_seconds [300]: 300
      [1] US
      [2] EU
      Desired location option (enter a number): 1

      Create file profiles.yml
   
      update dbt_project.yml
        remove example
        and add +materialized: table
        under model > online_store
 
##  Test dbt connection
1.   cd to project folder
      ```
     cd online_store/
      ```
3.   Run debug for test connection to big query
      ```
     dbt debug
      ```
     
##  Upload raw data files
   Copy your data raw to seeds folder and run dbt seed using cli
   
   This process is to upluad your data raw files to Big Query dataset as a raw table
   
   ```
   dbt seed
   ```
##  Create Models
   In this step, create staging and warehouse folder under models folder
   
   create sql file for staging and datawarehouse query
   
   This Process is to create table staging and table data warehouse with your custom query
   
   run using dbt cli command
   ```
   dbt run
   ```
##  Create test
   In this step is to create schema with table documentation
   
   create schema.yml for database / warehouse documentation under models folder
   
   run using dbt cli command
   ```
   dbt test
   ```

##  Create Documentation
   In This Step is to create documentation web from localhost
   
   ```
   dbt docs generate
   ```
   
   ```
   dbt docs serve --port 8100
   ```
