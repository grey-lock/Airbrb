import React, { Component } from 'react'
import { connect } from 'react-redux'

// Will need an initial state to empty the form after submission

const initialState = {
  host_id: null,
  title: '',
  description: '',
  address: '',
  lat: null,
  long: null,
  price: 1,
  prop_type: '',
  room_type: 'Entire place',
  num_guests: 1,
  bedrooms: 1,
  beds: 1,
  rules: 'Enjoy yourself.',
  img_url: '',
  wifi: true,
  kitchen: true,
  ac: false,
  tv: true
}

class ListingsNewForm extends Component {
  constructor(props) {
    super(props)
    this.state = initialState
  }
  
  // There should be some form error handling here for bad input and/or submission
  
  // Update the state as inputs are entered
  handleInputChange = e => {
    this.setState({
      [e.target.name]: e.target.value
    })
  }
  
  handleOnSubmit = e => {
    e.preventDefault()
    // Need to add an action that creates the room
  
  }
  
  render() {
    return(
      <div className='container'>
        <div className='new-listing-header'>
          <span id='new-listing-header-title'>Create a new listing</span>
          <span id='new-listing-header-desc'>Please fill out all of the fields below.</span>
        </div>
        <div className='form-group new-listing-form-container'>
          <div className='new-listing-form'>
            <h2>What type of place are you listing?</h2>
            <h3>What type of property is this?</h3>
            <select className='form-control'
                    name='prop_type'
                    value={this.state.name}
                    onChange={this.handleInputChange}>
              <option value="" hidden >Select one</option>
              <option value="Apartment" >Apartment</option>
              <option value="Condo" >Condo</option>
              <option value="Hotel" >Room</option>
              <option value="House" >House</option>
              <option value="Vacation Home" >Vacation Home</option>
            </select>
            
            <br/>
          
          </div>
        </div>
      
      </div>
      
      )
  }
  
  
  
}
// Form might have to be its own component

// Will need to connect to state to update the store upon submit