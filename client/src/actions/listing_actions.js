import fetch from 'isomorphic-fetch'

const API_URL = process.env.REACT_APP_API_URL

// Assign this to clean up fetch code
const headers = {
  'Accept': 'application/json',
  'Content-Type': 'application/json'
}

// Action Creators
const getListings = listings => {
  console.log('In getListings')
  return {
    type: 'GET_LISTINGS',
    listings
  }
}

const getListing = listing => {
  console.log('In getListing')
  return {
    type: 'GET_LISTING',
    listing
  }
}

const addListing = listing => {
  console.log('In addListing')
  return {
    type: 'ADD_LISTING',
    listing
  }
}

// Async Actions

export const fetchListings = () => {
  console.log('firing fetchListings in listingActions action')
  return dispatch => {
    // console.log(dispatch)
    return fetch(`${API_URL}/listings`, { headers })
    // .then(console.log(headers))
    .then(resp => resp.json())
    .then(listings => dispatch(getListings(listings)))
    .catch(error => console.log(error));
  }
}

