Welcome to your new dbt project!

# ETL DBT Google Big Query Data Warehouse
Extract data from csv, Transform and load to Google Big Query using Data Build Tool (DBT)

# Prerequisite
1.  Have Big Query Account
2.  Have python3 and pip Library
3.  Using Ubuntu 20.04 on this Project
4.  Have install Jupyter Notebook for Transform csv data

# Hands On 
##  Install dbt-bigquery
1.  Create virtual environment ( for isolate the project )
   '''
    python3 -m venv dbt-project
   '''
3.  Acivate virtual environment
4.  Install using pip command
    
##  Check Dbt Version
##  Setup dbt big query init 
Create file profiles.yml
update dbt_project.yml
  remove example
  and add +materialized: table
  under model>online_store
 
##  Test dbt connection
##  Upload raw data files
##  Create Models
##  Create test
##  Create Documentation
