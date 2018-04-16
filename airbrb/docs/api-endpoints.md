# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Users

- `GET /api/users`
- `POST /api/users`
- `GET /api/users/:id`
- `PATCH /api/users/:id`

- `GET /api/users/:id/reviews`
- `GET /api/users/:id/bookings`

### Listings

- `GET /api/listings`
  - `Listings index/search`
  - Possible filters, will accept query params `location, checkIn, checkOut, guests`
- `POST /api/listings`
- `GET /api/listings/:id`
- `PATCH /api/listings/:id`
- `DELETE /api/listings/:id`
- `GET /api/listings/:id/reviews`
- `GET /api/listings/:id/bookings`

### Reviews

- `GET /api/reviews`
- `POST /api/reviews`
- `GET /api/reviews/:id`
- `DELETE /api/reviews/:id`

### Bookings

- `GET /api/bookings`
- `POST /api/bookings`
- `GET /api/bookings/:id`
- `DELETE /api/bookings/:id`