# Database Schema

## Users

column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, indexed, unique
username        | string    | not null, indexed, unique
password_digest | string    | not null
firstname       | string    | not null, indexed
lastname        | string    | not null, indexed
session_token   | string    | not null, indexed, unique
img_url         | string    | not null

## Listings

column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
host_id         | integer   | not null, foreign key (references users), indexed
booking_id      | integer   | foreign key (references bookings), indexed
title           | string    | not null
description     | text      | not null
address         | text      | not null
long:           | float     | not null
lat:            | float     | not null
rules           | text      | not null
price           | integer   | not null
prop_type       | string    | not null
room_type       | string    | not null
num_guests      | integer   | not null
bedrooms        | integer   | not null
beds            | integer   | not null
img_url         | string    | not null
amenities       | boolean   | not null, default false (WiFi, Kitchen, TV, Cable, etc.)

## Bookings

column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key (references users), indexed
listing_id      | string    | not null, foreign key (references listings), indexed
status          | string    | not null, default pending
check_in        | date      | not null
check_out       | date      | not null

## Reviews

column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key (references users), indexed
listing_id      | integer   | not null, foreign key (references listings), indexed
booking_id      | integer   | not null, foreign key (references bookings), indexed
body            | text      | not null
rating          | integer   | not null