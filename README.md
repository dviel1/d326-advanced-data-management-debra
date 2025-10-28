# 📊 Advanced Data Management (D326) — WGU Portfolio Project

This repository showcases my completed work for **WGU D326: Advanced Data Management**.  
It demonstrates SQL database design, user-defined functions (UDFs), procedural logic, ETL routines, and reporting using the classic DVD Rental schema.  

> 🧑‍💻 **Author:** Debra J. Viel  
> 🏫 **Course:** Advanced Data Management (D326) — WGU  
> 📅 **Term Completed:** 2025  

---

## 🚀 Project Overview

This project was developed as part of the D326 performance assessment.  
It focuses on building **detailed and summary business reports** using PostgreSQL, custom transformations, and automated refresh procedures.

**Key components include:**
- 📌 **ETL/Refresh Procedures** — reproducible scripts to rebuild reporting tables  
- 🧠 **UDFs (User Defined Functions)** — transforming rental durations into labeled categories  
- 🧾 **SQL Reporting Queries** — producing both detailed and summary revenue views  
- 📊 **Rubric-Aligned Written Report** — included in `/reports`  
- 🛠️ **Folder Structure** ready for GitHub portfolio display

---

## 📂 Repository Structure

.
├── src/
│ └── sql/
│ ├── functions/ # UDFs (e.g., duration_label.sql)
│ ├── procedures/ # ETL/refresh procedures
│ └── queries/ # Reporting & validation queries
├── reports/ # Final written business report (DOCX)
├── docs/ # Diagrams, ERDs, screenshots (optional)
├── data/
│ ├── raw/ # Source data (excluded from Git)
│ └── processed/ # Processed outputs (excluded from Git)
├── .github/workflows/ # CI (optional)
├── LICENSE
├── README.md
└── .gitignore


---

## 🧰 Technologies Used

- 🐘 **PostgreSQL / PLpgSQL**
- 📝 SQL DDL, DML, UDFs & Stored Procedures
- 🧮 Data modeling & ETL scripting
- 🖥️ Git & GitHub for version control

---

## 🧪 Running the Project

1. **Set up a PostgreSQL database** and load the `dvdrental` schema.  
2. Run scripts in `src/sql/functions/` followed by `src/sql/procedures/`.  
3. Execute queries in `src/sql/queries/` to generate reporting outputs.  
4. Open the DOCX in `/reports` to view the written analysis.

## 🧭 Database Diagram (ERD)

<p align="center">
  <img src="docs/dvd_rental_erd_layout.png" alt="DVD Rental ERD" width="600"/>
</p>


---

## 🏆 Learning Outcomes

- ✅ Built and deployed reusable ETL and reporting logic  
- ✅ Created UDF transformations for cleaner business insights  
- ✅ Delivered both technical SQL assets and professional documentation  
- ✅ Packaged work in a clean, shareable GitHub portfolio repo

---

## ✨ Author

**Debra J. Viel**  
> *“Art that sees, data that speaks, heart that serves.”*  
📍 Data Analytics Student | Sketch Artist | Community Advocate

[📎 GitHub Profile](https://github.com/dviel1)

---

## 🪪 License

This project is released under the **MIT License**.  
You are free to use, modify, and share with attribution.

---

