import { connect } from 'react-redux'
import { fetchListing } from '../../../actions/listing_actions'
// import ListingPage from './ListingPage'
import{ bindActionCreators } from 'redux'
import React from 'react'
import ListingDetailContainer from './detail/ListingDetailContainer'
import ListingImageContainer from './image/ListingImageContainer'

class ListingPage extends React.Component {

  // When the component loads, fetch the specific listing
  componentDidMount() {
    this.props.fetchListing(this.props.match.params.listingId)
  }
  
  render() {
    
  // debugger
  const listing = this.props.listing.listings.currentRoom
  if (!listing) return null // Null if no listing found
   
   return (
     
     <div>
     <article>
      <div>
        <ListingImageContainer listing={listing} />
      </div>
      <div className='container listing-page'>
        <div className='listing-detail'>
          <ListingDetailContainer listing={listing} />
        </div>
      </div>
     </article>
     </div>
     
     )
  }
}



const mapStateToProps = listings => {
  // console.log(listings)
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