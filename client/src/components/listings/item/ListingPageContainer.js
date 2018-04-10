import { connect } from 'react-redux'
import { fetchListing } from '../../../actions/listing_actions'
import ListingPage from './ListingPage'
// import ListingsContainer from '../ListingsContainer'


const mapStateToProps = state => ({
  // debugger
  // console.log('in mapStateToProps: ', state)
    // debugger
    listing: state.id
})

const mapDispatchToProps = dispatch => ({
  // debugger
  // console.log('in mapDispatchToProps', dispatch)
  fetchListing: (id) => dispatch(fetchListing(id))
})

export default connect(mapStateToProps, mapDispatchToProps)(ListingPage)