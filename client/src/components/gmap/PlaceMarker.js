import React from 'react'
import { Marker } from 'react-google-maps'


class PlaceMarker extends React.Component {
  render() {
    const { lat, long } = this.props
    
    return (
      <Marker
        position={{
          lat: parseFloat(lat),
          long: parseFloat(long)
        }}
      />
    )
  }
}

export default PlaceMarker