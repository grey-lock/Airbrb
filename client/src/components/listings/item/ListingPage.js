import React, { Component } from 'react'
import ListingDetailContainer from './detail/ListingDetailContainer'
import ListingImageContainer from './image/ListingImageContainer'

class ListingPage extends Component {
  // When the component loads, fetch the specific listing
  componentDidMount() {
    // this.props.fetchListing(this.props.match.params.listingId)
  }
  
  render() {
  // const { listing } = this.props
   if (!listing) return null // Null if no listing found
   
   return (
     <article>
      <div>
        <ListingImageContainer listing={this.props} />
      </div>
      <div className='container listing-page'>
        <div className='listing-detail'>
          <ListingDetailContainer listing={this.props} />
        </div>
      </div>
     </article>
     
     )
  }
}