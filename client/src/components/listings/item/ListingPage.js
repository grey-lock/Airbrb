import React from 'react'
import ListingDetailContainer from './detail/ListingDetailContainer'
import ListingImageContainer from './image/ListingImageContainer'

class ListingPage extends React.Component {
  // When the component loads, fetch the specific listing
  componentDidMount() {
    this.props.fetchListing(this.props.match.params.listingId)
  }
  
  render() {
    
  const listing = this.props.listing.listings
  // if (!listing) return null // Null if no listing found
  // debugger
   
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

export default ListingPage