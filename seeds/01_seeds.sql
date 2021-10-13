INSERT INTO users (
  name, 
  email, 
  password
  )
VALUES 
  ('Max', 'max@local.ch', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Mad', 'alunya@local.bn', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Iosif', 'leninpupil@local.ge', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
--
INSERT INTO properties (
  owner_id, 
  title, 
  thumbnail_photo_url, 
  cover_photo_url,
  country,
  city,
  province,
  post_code,
  description
  )
VALUES 
  (3, 'dacha', 'i.here.ca/this', 'i.here.ca/there', 'Georgia', 'N/A', 'N/A', 'N/A', 'description'),
  (1, 'la casa', 'i.here.ca/have', 'i.here.ca/babies', 'Nevada', 'N/A', 'N/A', 'N/A', 'description'),
  (1, 'la casa minor', 'i.here.ca/minors', 'i.here.ca/only', 'Florida', 'Miami', 'N/A', 'N/A', 'description');
--
INSERT INTO reservations (
  start_date,
  end_date,
  property_id,
  guest_id
)
VALUES 
  ('2012-02-11', '2015-02-13', 2, 2),
  ('2016-02-11', '2017-02-13', 1, 2),
  ('2019-02-11', '2021-02-13', 3, 2);
--
INSERT INTO property_reviews (
  reservation_id,
  rating,
  message
)
VALUES 
  (1, 3, 'message'),
  (2, 2, 'message'),
  (3, 3, 'message');