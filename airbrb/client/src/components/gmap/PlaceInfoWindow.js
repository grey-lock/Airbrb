import React from 'react'
import { InfoWindow } from 'react-google-maps'

class PlaceInfoWindow extends React.Component {
  render() {
    const { description, title, price } = this.props
    
    return (
      <InfoWindow onCloseClick={this.props.closeWindow}>
        <div>
          <h1>{title}</h1>
          <p>{description}</p>
          <span>${price}</span>
        </div>
      </InfoWindow>
      )    
    
  }
  
}

export default PlaceInfoWindow