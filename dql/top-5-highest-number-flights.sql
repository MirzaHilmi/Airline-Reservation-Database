# Get the top 5 airlines with the highest number of flights:
SELECT a.name, COUNT(f.flight_id) AS total_flights
FROM sbd.airline a
JOIN sbd.flight f ON a.airline_id = f.airline_id
GROUP BY a.name
ORDER BY total_flights DESC
LIMIT 5;
