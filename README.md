# ETL-Project

Project 2: Extract, Transform, and Load

This project was completed by Marcus, Yifei and Samra.

As Insurance Company Analysts in this project, we are analysing Department of Transport's road crashes for the past 5 years dataset in Victoria. Australia.

Output of this project is a database that includes the road crashes that occured in Victoria, Austalia between 2015 - 2020.

We used 2 data sources and created a normalized and relational database with 13 tables in PostgreSQL.

 ![image](https://user-images.githubusercontent.com/85004202/139241066-afba3265-a10e-4005-9059-23ff63225a45.png)

Below is a step by step breakdown of our ETL process;

- Exported Datasets and read them in our jupyternotebook
- Inspected columns and searched for missing and NaN values (crashes dataframe)
- Searched for duplicate values to remove them (crashes dataframe)
- Removed the rows with missing data (crashes dataframe)
- Removed irrelevant columns from the dataframe and just kept columns necessary for the analysis (final_lga dataframe)
- Assigned unique IDs to each row in the dataframe (final_lga dataframe)
- Mapped our datasets via LucidChart and identified primary and foreign keys

![image](https://user-images.githubusercontent.com/85004202/139427949-ccb3f6c4-3bd0-4895-aa30-2878e17c0377.png)
 
- Normalised our dataframes and broke them into 13 tables
- Defined our tables and created the schemas.sql
- Created the schemas in our PostgreSQL database
- Created an engine to between Python (Jupyter Notebook) and SQL database
- Loaded data in our database using the engine.

## How to run the files:
- Create a database in PGAdmin
- Add the name of the database in the config file
- Add your password to the config file
- Save the config file
- Right click on your database and click 'query tool'
- Copy and paste the code in from the file 'schema.sql' in PGAdmin (this is optional but reccommended)
- Run the code in 'transforming.ipynb' (this may take between 10-20 seconds)
- The Data has now been loaded into the database

