import fetch from 'isomorphic-fetch'

const API_URL = process.env.REACT_APP_API_URL


// Assign this to clean up fetch code
const headers = {
  'Accept': 'application/json',
  'Content-Type': 'application/json'
}

// Action Creators
const getListings = listings => { 
  console.log('In GetListings')
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

export const fetchListings = () => dispatch => { // return the dispatch
  console.log('firing fetchListings in listingActions action')
  return fetch(`${API_URL}/listings`) // Fetch the listings from the API
    .then(resp => resp.json()) // Parse the resp
    .then(listings => dispatch(getListings(listings)), // Pass the parsed response to the dispatch
    console.error
    )
}

export const fetchListing = listing => dispatch => {
  return fetch(`${API_URL}/listings/${listing}`)
  .then(resp => resp.json())
  .then(listing => dispatch(getListing(listing)),
  console.error
  )
}

export const createListing = listing => dispatch => { // return the dispatch
  console.log('CREATING Listing by POST')
  return fetch(`${API_URL}/listings`, { // POST to the server
    body: JSON.stringify({ listing }), // JSON the listing data
    method: 'POST',
    headers
    })
    .then(resp => resp.json()) // Server responds with success or fail
    .then(listing => dispatch(addListing(listing)), // Dispatch to update the state
    console.error
    )
}

