# Advanced Data Management (D326) — Portfolio Package

This repository packages my completed work for **WGU D326: Advanced Data Management**. It showcases SQL design, procedural logic, user‑defined functions, and reporting artifacts using the classic DVD Rental schema.

## Highlights
- **ETL/refresh routine**: reproducible scripts for building summary tables
- **UDFs**: custom transformations (e.g., labeling rental durations)
- **Queries**: detailed vs. summary report SQL with validation steps
- **Report**: written analysis covering rubric sections (A–F)
- **Repro guide**: run-book for setting up schema and executing procedures

---

## Repo Structure
```
src/
  sql/
    functions/        # CREATE FUNCTION ... (UDFs)
    procedures/       # CREATE PROCEDURE ... (ETL/refresh, load)
    queries/          # SELECT statements for reports/validation
  python/             # Optional helper scripts (CSV -> DB, checks)
reports/              # Written report (md/docx/pdf)
data/
  raw/                # Source CSVs / inputs (excluded in git)
  processed/          # Derived data (excluded in git)
docs/                 # ERD, diagrams, screenshots
.github/workflows/    # (Optional) CI checks / lint
```

## Quickstart
1. Provision a PostgreSQL database and load the **DVD Rental** schema.
2. Run files in `src/sql/functions/` then `src/sql/procedures/` (order matters).
3. Execute the report queries in `src/sql/queries/` to verify results.
4. Find your final DOCX under `reports/`.

## Author
**Debra J. Viel** — “Art that sees, data that speaks, heart that serves.”

## Included Final Report
- `reports/Debra_Viel_SQL_Business_Report_Revised.docx` — submitted business report.
