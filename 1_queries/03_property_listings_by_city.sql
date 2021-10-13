SELECT properties.*, average_rating
FROM properties
JOIN (
  SELECT property_id, AVG(rating) AS average_rating
  FROM property_reviews
  GROUP BY property_id) AS average_ratings
ON (properties.id = average_ratings.property_id)
WHERE average_rating >= 4
AND city LIKE '%Vancouver%'
ORDER BY cost_per_night
LIMIT 10;