## Component Structure

**AuthContainer**
  - AuthForm

**NavContainer**
  - SearchBarContainer
  - NavLinks
  - LoginContainer

**HomeContainer**
 - Home
 - SearchBar
 - ListingIndex
    - ListingItem

**SearchListingsContainer**
- SearchListingsIndexContainer
  - FilterContainer
  - ListingIndex
    - ListingItem
- MapContainer

**ListingItemContainer**
- ListingImageContainer
  - ImageSlider
- ListingDetailContainer
  - ListingDetail
    - ListingInfo
    - ReviewContainer
      - ReviewIndex
      - ReviewForm
    - BookingContainer
        - BookingForm
        - BookingInfo

**BookingContainer**
  - BookingIndex
    - BookingItem

## Routes

|Path   | Component   |
|-------|-------------|
| /signup | AuthContainer |
| /signin | AuthContainer |
| / | HomeContainer |
| /s/:searchParams | SearchIndexContainer |
| /listings/:roomId | ListingItemContainer |
| /bookings/:userId | BookingsContainer |