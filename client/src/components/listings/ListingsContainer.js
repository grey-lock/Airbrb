import React from 'react'
import ListingsList from './ListingsList'
import { fetchListings } from '../../actions/listing_actions'
import { listingsReducer } from '../../reducers/listings_reducer'
import { connect } from 'react-redux'

const mapStateToProps = (state) => {
  // console.log(listings)
  console.log('in mapStateToProps', state)
  return ({
    listings: state.listings
  })
}

const mapDispatchToProps = (dispatch) => {
  // console.log(dispatch)
  return ({
    fetchListings: () => dispatch(fetchListings())
  })
}

export default connect(mapStateToProps, mapDispatchToProps)(ListingsList)