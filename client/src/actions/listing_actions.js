import fetch from 'isomorphic-fetch'

const API_URL = process.env.REACT_APP_API_URL

// Assign this to clean up fetch code
const headers = {
  Accept: 'application/json',
  'Content-Type': 'application/json'
}

// Action Creators
export const getListings = listings => {
  console.log('In action')
  return {
    type: 'GET_LISTINGS',
    listings
  }
}

export const getListing = listing => {
  console.log('In action')
  return {
    type: 'GET_LISTING',
    listing
  }
}

export const addListing = listing => {
  console.log('In action')
  return {
    type: 'ADD_LISTING',
    listing
  }
}

// Async Actions

export const fetchListings = () => {
  console.log('in fetch listings in listingActions')
  return dispatch => {
    console.log(dispatch)
    return fetch(`${API_URL}/listings`, { headers })
    .then(console.log(headers))
    .then(resp => resp.json())
    .then(listings => dispatch(getListings(listings)))
    .catch(error => console.log(error));
  }
}

