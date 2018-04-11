import React from 'react'
import { withGoogleMap, GoogleMap } from 'react-google-maps'

const AirbnbMap = withGoogleMap(props => (
  <GoogleMap
    defaultCenter={props.center}
    defaultZoom={props.zoom} />
  ))


class Map extends React.Component {
  constructor(props) {
    super(props)
    
    this.zoom = 7
    
    this.state = {
      lat: 50.0515918,
      long: 19.9357531
    }
  }
  
  render() {
    const { lat, long } = this.state
    return (
      <div style={{width: `750px`, height: `750px`}}>
        <AirbnbMap
          center={{
            lat: lat,
            long: long
          }}
          zoom={this.zoom}
          containerElement={
            <div style={{ height: `100%` }} />
          }
          mapElement={
            <div style={{ height: `100%` }} />
          }
          />
      </div>
      )
  }
}

export default Map