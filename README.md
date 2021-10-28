# ETL-Project

Project 2: Extract, Transform, and Load

This project was completed by Marcus, Yifei and Samra.

As Insurance Company Analysts in this project, we are analysing Department of Transport's road crashes for the past 5 years dataset in Victoria. Australia.

Output of this project is a database that includes the road crashes that occured in Victoria, Austalia between 2015 - 2020.

We used 2 data sources and created a normalized and relational database with 13 tables in PostgreSQL.

<img src="https://user-images.githubusercontent.com/85004202/139241066-afba3265-a10e-4005-9059-23ff63225a45.png" width="100" height="100">


Below is a step by step breakdown of our ETL process;

- Exported Datasets and read them in our jupyternotebook
- Inspected columns and searched for missing and NaN values (crashes dataframe)
- Searched for duplicate values to remove them (crashes dataframe)
- Removed the rows with missing data (crashes dataframe)
- Removed irrelevant columns from the dataframe and just kept columns necessary for the analysis (final_lga dataframe)
- Assigned unique IDs to each row in the dataframe (final_lga dataframe)
- Mapped our datasets via LucidChart and identified primary and foreign keys

<img src="https://user-images.githubusercontent.com/85004202/139242781-d2422ba6-1d19-4119-9d09-bf420dab236c.png" width="1000" height="1000">

- Normalised our dataframes and broke them into 13 tables
- Defined our tables and created the schemas.sql
- Created the schemas in our PostgreSQL database
- Created an engine to between Python (Jupyter Notebook) and SQL database
- Loaded data in our database using the engine.



