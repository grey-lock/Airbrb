import { connect } from 'react-redux'
import { fetchListings } from '../../actions/listing_actions'
// import { listingsReducer } from '../../reducers/listings_reducer'
import{ bindActionCreators } from 'redux'
import ListingsList from './ListingsList'

// State from the reducer is being mapped to the props being passed in
const mapStateToProps = state => {
  // console.log(listings)
  console.log('mapStateToProps', state)
  // debugger
  return ({
    listings: state.listings
  })
}

// Hold references to a function which get executed to dispatch an action
const mapDispatchToProps = dispatch => {
  console.log('mapDispatchToProps', dispatch)
  return bindActionCreators({
    // Whenever this property is executed, this method will fire
    fetchListings: fetchListings
  }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(ListingsList)