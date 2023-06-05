
# E-Learning Platform Data Warehouse
Group project with: [Aleksander Blok](https://github.com/olekblok)

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

Data warehouse for an E-Learning platform. Business goals of the e-learning platform “UniLearn” is to provide increase course completion rates by 4% compared to the previous year, and improve the average student grades by 8% by the end of the semester compared to the previous year. Source of data - e-learning platform database and data generators.

## Project contains: 

  - [Data Warehouse](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/ETL/DWCreate.sql) and [Source Database](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/tree/main/RelationalDB) design and implmentnation
  -  [MDX](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/Queries/MDXQuery.mdx) queries
  -  [KPI](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/Queries/KPI.txt) queries
  -  [BI dashboards](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/powerBi/report.pdf)  to represent the data.
  -  [ETL process](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/tree/main/ETL) written in T-SQL and [Enrollment Fact loading explanation](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/project_report/Fact_enrollment_explanation.pdf)
  -  [Data generators](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/tree/main/generator) in Python
  -  [SCD 2](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/ETL/ETL_load_students.sql) implementation and [explanation](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/project_report/SCD2%20explanation.pdf).
  -  [Visual Studio project](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/tree/main/Visual_Studio_proj) Cube with hierarchies
  -  Project [Documentation](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/tree/main/project_report) and DW [optimization report](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/project_report/OptimizationReport.pdf)

## Screenshots


## Data warehouse design
Data Warehouse consists of two fact tables, namely Fact_Enrollment and Fact_Teachings. The Fact_Enrollment table contains numerical data for each student's enrollment in a particular course, including their grades and results from surveys. With this data, we have been able to perform aggregation functions such as calculating the average grade, average tutor rate, and average competition percentage.
![Screenshot 5](/screens/DWscreen.png)

## Database design
![Screenshot 6](/screens/DBscreen.png)


## PowerBI dashboards
![Screenshot 1](/screens/CompletionScreen.png)
![Screenshot 2](/screens/KPIscreen.png)
![Screenshot 3](/screens/AvgGrade.png)
![Screenshot 4](/screens/NumHoursScreen.png)
More screenshots available in [report.pdf](https://github.com/kasztanators/Data-Warehouse-E-learning-platform/blob/main/powerBi/report.pdf)
