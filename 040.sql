/*Please add ; after each select statement*/
CREATE PROCEDURE pastEvents()
BEGIN
    SELECT id, event_date, DATE_ADD(event_date, INTERVAL -7 DAY) INTO @idMax, @dateMax, @dateLimit FROM Events ORDER BY event_date DESC LIMIT 1;
    -- SELECT @idMax, @dateMax, @dateLimit;
    SELECT name, event_date 
    FROM Events 
    WHERE event_date >= @dateLimit AND event_date < @dateMax
    -- GROUP BY name 
    ORDER BY event_date DESC;
END