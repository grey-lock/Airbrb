import ListingsList from './ListingsList'
import { fetchListings } from '../../actions/listing_actions'
// import { listingsReducer } from '../../reducers/listings_reducer'
import { connect } from 'react-redux'

// State from the reducer is being mapped to the props being passed in
// 
const mapStateToProps = state => {
  // console.log(listings)
  console.log('in mapStateToProps', state)
  return ({
    listings: state.listings
  })
}

// Hold references to a function which get executed to dispatch an action
const mapDispatchToProps = dispatch => {
  console.log('in mapDispatchToProps', dispatch)
  return ({
    // Whenever this property is executed, this method will fire
    fetchListings: () => dispatch(fetchListings())
    // Will need a function to add the listing here
  })
}

export default connect(mapStateToProps, mapDispatchToProps)(ListingsList)