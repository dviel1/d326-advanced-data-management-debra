-- queries/report_queries.sql
SELECT * FROM detailed_category_revenue ORDER BY rental_date DESC LIMIT 25;
SELECT * FROM summary_category_revenue ORDER BY total_revenue DESC;