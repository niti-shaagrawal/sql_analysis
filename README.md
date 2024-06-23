# sql_analysis

# Jobs and salaries in data science

![image1](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/d62d956e-1215-48f6-977d-4e20a49d214f)

Tools used MySQL, Kaggle

[Dataset used](https://www.kaggle.com/datasets/hummaamqaasim/jobs-in-data)

## Dataset Overview
Purpose: The dataset is designed to capture salary information over multiple years for various job titles across different locations and employment types.
Scope: It includes basic demographics such as job title, salary details, location, experience level, and employment type.
Usage: The dataset can be used to analyze trends in salaries over time, compare salaries between job titles, understand how location or employment type affects salaries, and more.
This basic structure provides a foundation for analyzing salary trends over the years for specific job titles using SQL queries as discussed earlier. Adjust and expand the dataset structure based on additional requirements or specific use cases for your analysis.

## Approach to Solve and Analyze the Dataset
### 1. Data Exploration and Cleaning
Data Inspection: Begin by exploring the dataset to understand its structure, column types, and any initial insights.
Data Cleaning: Address missing values, outliers, and inconsistencies in the dataset. Ensure all data types are appropriate for analysis.
### 2. Descriptive Analysis
Salary Distribution: Calculate and visualize the distribution of salaries across different job titles, experience levels, and company locations.
Trends Over Time: Analyze how salaries, employment types, and job titles have changed over the years using aggregate functions and visualization tools.
### 3. Correlation Analysis
Correlating Factors: Determine relationships between variables such as salary and job title, salary and experience level, etc., using correlation matrices and scatter plots.
Identifying Influencers: Identify factors that most strongly influence salary variations, such as location, company size, or specific job categories.

## Insights gathered-
Below I will show the results of the SQL queries I conducted and provide explanations of the patterns and trends I found throughout the analysis.

1. 
![Screenshot 2024-06-23 182913](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/fedfe652-5bef-4418-be0f-5c76edc090a2)

This output shows the maximum salary for each job category. At a single glance, it can be observed that Data Science and Research is the highest paying job category with the maximum salary of 450000 usd followed by data analyst with the maximum salary of 430967 whereas it can be observed that Cloud and database is the lowest paid job category with a maximum pay of 190000 usd. 

2. 
![Screenshot 2024-06-23 183321](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/2a265691-4e70-429e-9940-eee038e0ef80)

The above output shows the average salary for each job category. it can be seen that unlike the maximum pay, the job category of Machine learning and AI as 170453 usd has the highest average salary followed by Data Science and Research as 157131 usd, on the other hand, the lowest paying job is Data Quality and operations.

3.
![Screenshot 2024-06-23 183716](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/8aac79f2-e878-4940-a37d-f4a189c90496)

The above output shows the distribution of salaries on the basis of experience levels of employees. The Excecutive level has the highest mean salary among all the levels with the pay of 187518.9 usd whereas the entry-level is paid the lowest. It can be observed that there is a vast different in the mean salaries of the entry level employees and the other levels, the average pay of Executive and Senior level being more than twice of that of entry_level. 

4.
![Screenshot 2024-06-23 184230](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/2123d09f-2497-4899-b33a-30b7eea57794)

This result provides insights about the distribution of salaries on the basis of company size. On the basis of maximum salary and mean salary it can be concluded that mid size companies are the highest paying companies ans small size companies being the lowest paying companies. mid size companies also have the largest pay range. There is not much significant difference between the minimum salaries of different companies. However, the small size compnies have a higher minimum pay than mid size and large companies.

5.
![image](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/d3b85aac-403e-44c7-b957-05061b88a1c1)

This table shows the salary distributions on the basis of different work settings. The in-person jobs are the hihest paying jobs followed by remote jobs. The average pay of hybrid jobs is signnificantly low if compared with the other jobs. 

6.
![Screenshot 2024-06-23 185212](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/1f9c2065-e59a-40f8-9636-418b76274f8b)

This output shows the distribution of employees on the basis of employment type.It can be observed that most of the employees are employed full time.

7.
![Screenshot 2024-06-23 185435](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/fc124b1d-33be-4f9b-99c8-f54ce6689c98)

The above output provides information on the distribution of salaries on the basis of employment type. It can be seen that full-time jobs pay the highest amount of salaries followed by contract. The pay of these two is around double of what is paid in freelancing and part-time.

8.
![Screenshot 2024-06-23 185710](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/bfbcd7c9-7bdd-4b30-90f8-f0f1031be897)

The above table shows the top 10 highest paying jobs. The Analytics engineering manager is paid the highest among all the job titleswith an average salary of around 400000 usd. This is followed by Data Science Tech Lead with an average pay of around 375000 usd.
 
9.
![Screenshot 2024-06-23 190126](https://github.com/niti-shaagrawal/sql_analysis/assets/152295238/5f0b8f78-9c60-44e7-b9cd-78971d250f4d)

This table provides information on the employment trends over the years. It can be observed that the amount of full time jobs grew significantly from 2020 to 2023.

## Conclusion
Based on the dataset analysis, roles in Data Science and Research command the highest salaries, while Machine Learning and AI roles lead in average pay. Seniority significantly influences compensation, with executive-level positions earning the highest. Full-time positions dominate, offering more competitive salaries compared to other employment types.
