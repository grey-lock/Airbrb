import React from 'react'
import { Link } from 'react-router-dom'
import { fetchListings, fetchListing, updateListing } from '../../actions/listing_actions'
import { connect } from 'react-redux'
// import{ bindActionCreators } from 'redux'gqgd

// import ListingPageContainer from './item/ListingPageContainer'


class ListingsListItem extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      likes: this.props.likes
    }

  }
  
  componentWillReceiveProps(nextProps) {
    this.setState({listings: nextProps.listings});
  }
  

  handleLike = e => {
    const API_URL = process.env.REACT_APP_API_URL
    const listingId = e.target.dataset.id
    // const listing = props.fetchListing(listingId)
      return fetch(`${API_URL}/listings/${listingId}`)
      .then(resp => resp.json())
      .then(listing => this.props.updateListing(listing))
      // fetch(`${API_URL}/listings/${listingId}`)
      //   .then(resp => resp.json())
      //   .then(listing => this.props.fetchListing(listing))

      
      // this.props.fetchListing(listing)

    // const headers = {
    // 'Accept': 'application/json',
    // 'Content-Type': 'application/json'
    // }
    
    // this.props.updateListing(listing)
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
  return ({
    listings: state.listings
  })
};

// const mapDispatchToProps = dispatch => {
//   console.log('mapDispatchToProps', dispatch)
//   return bindActionCreators({
//     // Whenever this property is executed, this method will fire
//     fetchListing: fetchListing,
//     updateListing: updateListing
//   }, dispatch)
// }

export default connect(mapStateToProps, {updateListing, fetchListing})(ListingsListItem)