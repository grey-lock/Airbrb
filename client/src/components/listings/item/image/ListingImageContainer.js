import React from 'react'

const ListingImageContainer = props => {
  const imgStyle = {
    height: '100%', 
    width: '100%', 
    backgroundImage: `url(${props.img_url})`
  }
  
  return (
    <div className='listing-page-img' style={imgStyle}>
    </div>
    )
}

export default ListingImageContainer