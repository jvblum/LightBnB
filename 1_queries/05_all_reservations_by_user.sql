SELECT properties.*, reservations.*, average_rating
-- SELECT properties.id, title, start_date, end_date, cost_per_night, average_rating
FROM properties
JOIN reservations ON (properties.id = reservations.property_id)
JOIN (
  SELECT property_id, AVG(rating) AS average_rating
  FROM property_reviews
  GROUP BY property_id) AS average_ratings
ON (properties.id = average_ratings.property_id)
WHERE end_date < now()::date
AND reservations.guest_id = 1
ORDER BY start_date
LIMIT 10;