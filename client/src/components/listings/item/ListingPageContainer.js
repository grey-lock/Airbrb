import { connect } from 'react-redux'
import { fetchListing } from '../../../actions/listing_actions'
import ListingPage from './ListingPage'
import{ bindActionCreators } from 'redux'
// import ListingsContainer from '../ListingsContainer'


const mapStateToProps = listings => {
  return {
    listing: listings
  }
}

const mapDispatchToProps = dispatch => {
  return bindActionCreators({
    fetchListing: fetchListing
  }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(ListingPage)