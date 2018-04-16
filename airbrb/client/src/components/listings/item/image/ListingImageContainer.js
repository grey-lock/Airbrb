import React from 'react'

const ListingImageContainer = props => { // Be mindful of the props being passed in
  const imgStyle = {
    height: '100%', 
    width: '100%', 
    backgroundImage: `url(${props.listing.img_url})`
  }
  // debugger
  return (
    <div className='listing-page-img' style={imgStyle}>
    </div>
    )
}

export default ListingImageContainer