import React from 'react'
import { withGoogleMap, GoogleMap } from 'react-google-maps'
import PlaceMarker from './PlaceMarker'

const AirbnbMap = withGoogleMap(props => (
  <GoogleMap
    defaultCenter={props.center}
    defaultZoom={props.zoom}>
    
    {props.listings}
  </GoogleMap>
  ))


class Map extends React.Component {
  constructor(props) {
    super(props)
    
    this.zoom = 7
    
    this.state = {
      lat: 50.0515918,
      lng: 19.9357531
    }
  }
  
  render() {
    const { lat, lng } = this.state
    const listings = [<PlaceMarker lat={lat} long={lng} price={20} />]
    
    return (
      <div style={{width: `750px`, height: `750px`}}>
        <AirbnbMap
          center={{
            lat: lat,
            lng: lng
          }}
          zoom={this.zoom}
          containerElement={
            <div style={{ height: `100%` }} />
          }
          mapElement={
            <div style={{ height: `100%` }} />
          }
          listings={listings}
          />
      </div>
      )
  }
}

export default Map