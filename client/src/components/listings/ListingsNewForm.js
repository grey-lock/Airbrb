import React, { Component } from 'react'
import { connect } from 'react-redux'

// Will need an initial state to empty the form after submission

const initialState = {
  host_id: null,
  title: '',
  description: '',
  address: '',
  lat: null,
  long: null,
  price: 1,
  prop_type: '',
  room_type: 'Entire place',
  num_guests: 1,
  bedrooms: 1,
  beds: 1,
  rules: 'Enjoy yourself.',
  img_url: '',
  wifi: true,
  kitchen: true,
  ac: false,
  tv: true
}
// Form might have to be its own component

// Will need to connect to state to update the store upon submit