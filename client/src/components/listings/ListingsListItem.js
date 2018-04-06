import React from 'react'
import { Link } from 'react-router-dom'

const ListingsListItem = ({ listing }) => {
  // Styling for each img item
  let img = listing.img_url
  console.log(img)
  const imgStyle = {
    height: '100%',
    width: '100%',
    backgroundImage: `url('https://media1.britannica.com/eb-media/57/150657-004-DA93B8A4.jpg')`
  }
  // console.log(imgStyle)
  
  return (
  <li>
    <Link to={`/listings/${listing.id}`}>
    <div className='listing-list-img-box'>
      <div className='listing-list-img' style={imgStyle}></div>
    </div>
    
    <div className='listing-list-item-details'>
      <div className='listing-list-item-title'>
        <span><strong>${listing.price} </strong></span>
        <span><strong>{listing.title}</strong></span>
      </div>
      
      <div className='listing-list-item-desc'>
        <span>{listing.listing_type}</span>
        <span aria-hidden="true"> · </span>
        <span>{listing.beds} { listing.beds === 1 ? "bed" : "beds" }</span>
      </div>
      
      <div>
        <span className="review-count">{ ` ${listing.reviews} ` + (listing.reviews === 1 ? 'review' : 'reviews') }</span>
      </div>
    </div>
    </Link>
  </li>
  )
}

export default ListingsListItem