import React from 'react'
import { Link } from 'react-router-dom'
// import ListingPageContainer from './item/ListingPageContainer'


class ListingsListItem extends React.Component {
  constructor(props) {
    super(props)
    
    
    //this.handleLike = this.handleLike.bind(this)
  }
  
  handleLike = () => {
    let count = this.state.count
    this.setState({
      count: count += 1
    })
  }
  
  callApi = () => {
    const API_URL = process.env.REACT_APP_API_URL
    
    const headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
  }

  }

  // Styling for each img item

  render() {
    const {listing} = this.props
    let img = listing.img_url
  // debugger
  const imgStyle = {
    height: '100%',
    width: '100%',
    backgroundImage: `url(${img})`,
    zIndex: 10
  }
  

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
    <button onClick={this.handleLike}>Like</button>
    <button onClick={this.callApi}>Call Api</button>
    <span>Likes: {listing.likes}</span>

  </li>
  )
}
}
export default ListingsListItem