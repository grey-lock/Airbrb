import React from 'react'
import { Marker } from 'react-google-maps'
import PlaceInfoWindow from './PlaceInfoWindow'


class PlaceMarker extends React.Component {
  constructor(props) {
    super(props)

     this.state = {
      showTooltip: false
    }
  }

  clickTooltip() {
    this.setState({ showTooltip: !this.state.showTooltip })
  }

  closeWindow() {
    this.setState({ showTooltip: false })
  }
  render() {
    const { showTooltip } = this.state
    const { lat, lng, title, price, description, id } = this.props
    
    return (
      <Marker
        position={{
          lat: parseFloat(lat),
          lng: parseFloat(lng)
        }}
        onClick={this.clickTooltip.bind(this)}
        key={`marker${id}`}>
          {showTooltip && (
            <PlaceInfoWindow key={`info${id}`}
                             description={description}
                             title={title}
                             price={price}
                             closeWindow={this.closeWindow.bind(this)}/>
          )}
      </Marker>
    )
  }
}

export default PlaceMarker