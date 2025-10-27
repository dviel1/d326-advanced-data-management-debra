-- procedures/refresh_category_revenue.sql
-- Rebuilds detailed and summary revenue tables.
DO $$ BEGIN
    CREATE TABLE IF NOT EXISTS detailed_category_revenue (
        rental_id int,
        rental_date timestamp,
        customer_id int,
        film_id int,
        title text,
        category text,
        amount numeric(8,2),
        duration_label text
    );
    CREATE TABLE IF NOT EXISTS summary_category_revenue (
        category text,
        total_revenue numeric(12,2),
        total_rentals int,
        avg_rental numeric(10,2)
    );
END $$;

TRUNCATE TABLE detailed_category_revenue;
TRUNCATE TABLE summary_category_revenue;

INSERT INTO detailed_category_revenue
SELECT 
    r.rental_id,
    r.rental_date,
    r.customer_id,
    f.film_id,
    f.title,
    c.name AS category,
    COALESCE(p.amount, 0) AS amount,
    duration_label(f.rental_duration) AS duration_label
FROM rental r
JOIN inventory i      ON r.inventory_id = i.inventory_id
JOIN film f           ON i.film_id      = f.film_id
JOIN film_category fc ON f.film_id      = fc.film_id
JOIN category c       ON fc.category_id = c.category_id
LEFT JOIN payment p   ON p.rental_id    = r.rental_id;

INSERT INTO summary_category_revenue
SELECT
    category,
    SUM(amount) AS total_revenue,
    COUNT(*)    AS total_rentals,
    AVG(amount) AS avg_rental
FROM detailed_category_revenue
GROUP BY category
ORDER BY total_revenue DESC;