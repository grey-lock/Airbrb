import { connect } from 'react-redux'
import { fetchListings } from '../../actions/listing_actions'
import{ bindActionCreators } from 'redux'
import React from 'react'
import ListingsListItem from './ListingsListItem'



class ListingsList extends React.Component {
  componentDidMount() {
    this.props.fetchListings()
  }
  
  render() {
    const listings = this.props.listings.listings
    // debugger
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