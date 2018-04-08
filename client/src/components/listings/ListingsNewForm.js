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
        
        <br/>
        <br/>
        
        <div className='form-group new-listing-form-container'>
          <div className='new-listing-form-box'>
            <div className='new-listing-form'>
            
            <form onSubmit={this.handleOnSubmit}>
            
              <h2 className="form-title">Name your place</h2>
                <input className="form-control"
                       id="title-field"
                       name="title"
                       onChange={this.handleInputChange}
                       placeholder="Island Getaway in Costa Rica..."
                       type="text"
                       value={this.state.title} />
              <h2 className="form-title">Set your daily rate in USD</h2>
                <input className='form-control'
                       type="number"
                       name='price'
                       value={this.state.price}
                       onChange={this.handleInputChange}
                       placeholder="$99"/>
            
            
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
                <br/>
                
                <h3 className="sub-form-title">What type of room?</h3>
                <select className='form-control'
                        value={this.state.room_type}
                        name='room_type'
                        onChange={this.handleInputChange}>
                  <option value='Entire place'>Entire place</option>
                  <option value='Private room'>Private room</option>
                  <option value='Shared room'>Shared room</option>
                </select>
                
                <br/>
                <br/>
            
                <h2 className="form-title">How many guests can your place accommodate?</h2>
                  <select className='form-control'
                          value={this.state.num_guests}
                          name='num_guests'
                          onChange={this.handleInputChange}>
                    <option value={1} >1 guest</option>
                    <option value={2} >2 guests</option>
                    <option value={3} >3 guests</option>
                    <option value={4} >4 guests</option>
                    <option value={5} >5 guests</option>
                    <option value={6} >6 guests</option>
                    <option value={7} >7 guests</option>
                    <option value={8} >8 guests</option>
                  </select>
            
                <br/>
                <br/>
              
                <h3 className="sub-form-title">How many bedrooms can guests use?</h3>
                  <select className='form-control'
                          name='bedrooms'
                          value={this.state.bedrooms} 
                          onChange={this.handleInputChange}>
                    <option value={0} >Studio</option>
                    <option value={1}>1 bedroom</option>
                    <option value={2}>2 bedrooms</option>
                    <option value={3}>3 bedrooms</option>
                    <option value={4}>4 bedrooms</option>
                  </select>
                
                <br/>
                <br/>
                
                <h3 className="sub-form-title">How many beds can guests use?</h3>
                  <select className='form-control'
                          name='beds'
                          value={this.state.beds} 
                          onChange={this.handleInputChange}>
                    <option value={1}>1 bed</option>
                    <option value={2}>2 beds</option>
                    <option value={3}>3 beds</option>
                    <option value={4}>4 beds</option>
                    <option value={5}>5 beds</option>
                    <option value={6}>6 beds</option>
                    <option value={7}>7 beds</option>
                    <option value={8}>8 beds</option>
                  </select>
                  
                  <br />
                  <br />
                  
                  <h3 className="sub-form-title">Where is your place located?</h3>
                    <textarea className='form-control'
                              id="searchTextField"
                              onChange={this.handleInputChange}
                              name='address'
                              value={this.state.address}
                              placeholder={this.state.address === "" ?  "Address" : this.state.address}/>
                  <br />
                  <br />
                  
                  <h2 className="form-title">Describe your listing</h2>
                    <textarea className='form-control sub-form-title'
                              onChange={this.handleInputChange}
                              name='description'
                              value={this.state.description}
                              placeholder={this.state.description === "" ?  "Description" : this.state.description}/>
                  <br />
                  <br />
                  
                  <button className="btn btn-secondary mr-2" onClick={() => this.props.history.push('/listings')}>Cancel</button>
                  <button className="btn btn-info" type="submit">Add</button>
                  
                  <br/>
                  <br/>
                  
              </form>
              
            </div>
          </div>
        </div>

      </div>
      
      )
  }
  
  
  
}
// Form might have to be its own component

// Will need to connect to state to update the store upon submit

export default ListingsNewForm