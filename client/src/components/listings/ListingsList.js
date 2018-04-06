import React from 'react'
import ListingsListItem from './ListingsListItem'

class ListingsList extends React.Component {
  componentDidMount() {
    this.props.fetchListings()
  }
  
  render() {
    
    const { listings } = this.props
    const listingItems = listings.map(listing => <ListingsListItem key={listing.id} listing={listing} />)
    
    // If no listings return no results otherwise return each component
    console.log('In the component')
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