import React from 'react';
import { connect } from 'react-redux'

const VALID_CHARS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '/'];

class Search extends React.Component {
  constructor(props) {
    super(props)
    
    // Always remember to set a default state
    this.state = {
      address: '',
      checkIn: '',
      checkOut: '',
    }
  }

  handleDateChange(field) {
    return e => {
      if (e.target.value.split('').every( char => VALID_CHARS.includes(char) )) {
        this.setState({
          [field]: e.target.value
        })
      }
    }
  }

  handleAddressChange(e) {
    this.setState({
      address: e.target.value,
    })
  }

  handleOnSubmit(e) {
    e.preventDefault()
  }

  render() {
    return(
      <div id='search'>

      </div>
    )
  }


}


export default Search