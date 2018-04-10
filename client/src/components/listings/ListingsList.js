import React from 'react'
import { Route, Switch } from 'react-router-dom'

import ListingsListItem from './ListingsListItem'
import ListingPageContainer from './item/ListingPageContainer'

class ListingsList extends React.Component {
  componentDidMount() {
    this.props.fetchListings()
  }
  
  render() {
    
    const { listings } = this.props
    if (!listings) return null // Null if no listing found
    const listingItems = listings.map(listing => <ListingsListItem key={listing.id} listing={listing} />)
    // debugger

    
    // If no listings return no results otherwise return each component
    console.log('Loading ListingsList component')
    return (
      listings.length === 0 ? 
      <div>No results.</div> 
      :
      <div className='listing-list'>
      <Switch>
      <Route path={`${this.props.url}/:listingId`} component={ListingPageContainer}/>
      </Switch>
        <ul>
            { listingItems }
        </ul>
      </div>
      )
  }
}

export default ListingsList