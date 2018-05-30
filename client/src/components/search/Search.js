import React from 'react';
import { connect } from 'react-redux'
import { fetchListings } from '../../actions/listing_actions'

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

    this.props.fetchListings({
      address: this.state.address,
      checkIn: this.state.checkIn,
      checkOut: this.state.checkOut,
    })
  }

  render() {
    return(
      <div id='search'>
        <form onSubmit={ this.handleOnSubmit }>
          <div className='search-form-inner-wrapper'>
            <button display='none' type='submit'></button>
            <div className='search-input-wrapper'>
              <input
                type='text' 
                value={ this.state.address }
                onChange={ this.handleAddressChange }
                placeholder='Search listings'
              />
            </div>
            <div className='search-input-wrapper'>
              <input 
                type='text' 
                value={ this.state.checkIn }
                onChange={ this.handleDateChange('checkIn') }
                placeholder='Check In (mm/dd/yy)'
              />
            </div>
            <div className='search-input-wrapper'>
              <input 
                type='text' 
                value={ this.state.checkOut }
                onChange={ this.handleDateChange('checkOut') }
                placeholder='Check Out (mm/dd/yy)'
              />
            </div>
          </div>
        </form>
      </div>
    )
  }

}

const mapDispatchToProps = dispatch => {
  return {
    fetchListings: params => {
      dispatch(fetchListings(params))
    }
  }
}


export default connect(mapDispatchToProps)(Search)