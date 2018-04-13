import React from 'react'
import { Link } from 'react-router-dom'
import { likeListing } from '../../actions/listing_actions'
import { connect } from 'react-redux'
import{ bindActionCreators } from 'redux'

// import ListingPageContainer from './item/ListingPageContainer'


class ListingsListItem extends React.Component {
  constructor(props) {
    super(props)
    const initialState = this.state
  }
  
  handleLike = e => {
    const API_URL = process.env.REACT_APP_API_URL
    const listingId = e.target.dataset.id

    const headers = {
     'Accept': 'application/json',
     'Content-Type': 'application/json'
    }
    
    return fetch(`${API_URL}/listings/${listingId}`, {
      method: 'PATCH',
      headers,
      
    })
      .then(resp => resp.json())
      .then(listing => likeListing(listing),
      console.error
      )
    

  }
  
  render() {
    const {listing} = this.props
    let img = listing.img_url
  
  
  // Styling for each img item
  const imgStyle = {
    height: '100%',
    width: '100%',
    backgroundImage: `url(${img})`,
    zIndex: 10
  }
  
  // debugger
  return (
  <li>

    <Link to={`/listings/${listing.id}`}>
    <div className='listing-list-img-box' >
      <div className='listing-list-img' style={imgStyle}></div>
    </div>
    
    <div className='listing-list-item-details'>
      <div className='listing-list-item-title'>
        <span><strong>${listing.price} </strong></span>
        <span><strong>{listing.title}</strong></span>
      </div>
      
      <div className='listing-list-item-desc'>
        <span>{listing.prop_type}</span>
        <span aria-hidden="true"> · </span>
        <span>{listing.beds} { listing.beds === 1 ? "bed" : "beds" }</span>
      </div>
      
      <div>
        <span className="review-count">{ ` ${listing.reviews.length} ` + (listing.reviews.length === 1 ? 'review' : 'reviews') }</span>
      </div>
    </div>
    </Link>
    <button onClick={this.handleLike}
            data-id={listing.id}>Like</button>
    {/*<button onClick={this.callApi}>Call Api</button>*/}
    <span>Likes: {listing.likes}</span>

  </li>
  )
}
}

const mapStateToProps = state => {
  // console.log(listings)
  console.log('mapStateToProps', state)
  // debugger
  return ({
    listings: state.listings
  })
}

const mapDispatchToProps = dispatch => {
  return bindActionCreators({
    // Whenever this property is executed, this method will fire
    likeListing: likeListing
  }, dispatch)
}


export default connect(mapStateToProps, mapDispatchToProps)(ListingsListItem)