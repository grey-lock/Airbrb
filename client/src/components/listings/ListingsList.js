import React from 'react'
// import { Route, Switch } from 'react-router-dom'

import ListingsListItem from './ListingsListItem'
// import ListingPageContainer from './item/ListingPageContainer'

class ListingsList extends React.Component {
  componentDidMount() {
    this.props.fetchListings()
    // Either this needs to mount again, 
    // or I need to store the listings separate from a specific listing
  }
  // componentWillMount() {
  //   debugger
  // }
  
  render() {
    const listings = this.props.listings.listings
    debugger
    if (!listings) return null // Null if no listing found
    const listingItems = listings.map(listing => <ListingsListItem key={listing.id} listing={listing} />)

    // If no listings return no results otherwise return each component
    console.log('Loading ListingsList component')
    return (
      listings.length === 0 ? 
      <div>No results.</div> 
      :
      <div className='listing-list'>

        <ul>
            { listingItems }
        </ul>
      </div>
      )
  }
}

export default ListingsList