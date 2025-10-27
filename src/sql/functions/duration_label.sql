-- functions/duration_label.sql
CREATE OR REPLACE FUNCTION duration_label(p_duration integer)
RETURNS text
LANGUAGE plpgsql AS $$
BEGIN
    IF p_duration IS NULL THEN
        RETURN 'Unknown';
    ELSIF p_duration < 3 THEN
        RETURN 'Short';
    ELSIF p_duration <= 5 THEN
        RETURN 'Standard';
    ELSE
        RETURN 'Extended';
    END IF;
END;
$$;