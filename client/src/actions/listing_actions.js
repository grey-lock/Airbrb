import fetch from 'isomorphic-fetch'

const API_URL = process.env.REACT_APP_API_URL

// Assign this to clean up fetch code
const headers = {
  'Accept': 'application/json',
  'Content-Type': 'application/json'
}

// Action Creators
const getListings = listings => { 
  return { type: 'GET_LISTINGS', listings }
}

const getListing = listing => {
  console.log('In getListing')
  return { type: 'GET_LISTING', listing }
}

const addListing = listing => {
  console.log('In addListing')
  return { type: 'ADD_LISTING', listing }
}

// Async Actions

export const fetchListings = () => {
  console.log('firing fetchListings in listingActions action')
  return dispatch => {
    // console.log(dispatch)
    return fetch(`${API_URL}/listings`, { headers }) // Get the listings
    .then(resp => resp.json()) // Convert to json
    .then(payload => {
      dispatch(getListings(payload)) // dispatch the action function
    })
    .catch(error => console.log(error)); // Return an error if any
  }
}

export const createListing = listing => {
  console.log('CREATING Listing by POST')
  // debugger
  return dispatch => {
    return fetch(`${API_URL}/listings`, { 
        body: JSON.stringify({ listing }),
        method: 'POST',
        headers
      })
      .then( resp => Promise.all([resp.ok, resp.json()]) )
      .then( ([resp, payload]) => {
        return dispatch(addListing(payload))
      })
      .catch(error => console.log(error))
  }
}

