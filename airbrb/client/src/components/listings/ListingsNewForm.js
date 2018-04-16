import React, { Component } from 'react'
import { connect } from 'react-redux'
import { createListing } from '../../actions/listing_actions'
import { Redirect } from 'react-router'


// Will need an initial state to empty the form after submission

const initialState = {
  fireRedirect: false,
  host_id: 1,
  title: '',
  description: '',
  address: '',
  lat: 9.8820,
  long: 85.5290,
  price: 1,
  prop_type: '',
  room_type: 'Entire place',
  num_guests: 1,
  bedrooms: 1,
  beds: 1,
  rules: '',
  img_url: 'https://www.islands.com/g00/3_c-7x78x78x78.jtmboet.dpn_/c-7NPSFQIFVT34x24iuuqtx3ax2fx2fx78x78x78.jtmboet.dpnx2ftjuftx2fjtmboet.dpnx2fgjmftx2ftuzmftx2f3111_2y_x2fqvcmjdx2fjtmboet-ipnfqbhf-npwf-up-bo-jtmboe-upvu.kqhx3fjuplx3dFm9_L-QIx26j21d.nbslx3djnbhf_$/$/$/$/$/$/$/$',
  wifi: true,
  kitchen: false,
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
    
    this.props.createListing(this.state)
      .then(() => {this.setState({
        fireRedirect: true})
      })
    
  }
  
  render() {
    
    const { from } = this.props.location.state || '/listings/new' || '/listings/:listingId'
    const { fireRedirect } = this.state
    
    return(
      <div className='container'>
        <div className='new-listing-header'>
          <span id='new-listing-header-title'>Create a new listing</span>
          <br/>
          <br/>
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
                  <h3 className="form-title">List your house rules</h3>
                  <textarea className='form-control sub-form-title'
                              onChange={this.handleInputChange}
                              name='rules'
                              value={this.state.rules}
                              placeholder={this.state.rules === "" ?  "Rules" : this.state.rules}/>
                  <br />
                  <h2 className="form-title">Link to your image</h2>
                  <input className="form-control sub-form-title"
                       id="img_url-field"
                       name="img_url"
                       onChange={this.handleInputChange}
                       type="text"
                      // value={this.state.img_url} 
                       placeholder={this.state.img_url === "" ?  "Image URL" : this.state.img_url}/>
                  <br/>
                  
                  <br/>
                  <h2 className="form-title">Amenities</h2>
                  <h3 className="sub-form-title">Wifi?</h3>
                  <select className='form-control'
                          name='wifi'
                          value={this.state.wifi} 
                          onChange={this.handleInputChange}>
                    <option value={true} >Yes</option>
                    <option value={false}>No</option>
                  </select>
                  <br/>
                  <h3 className="sub-form-title">Air Conditioning?</h3>
                  <select className='form-control'
                          name='ac'
                          value={this.state.ac} 
                          onChange={this.handleInputChange}>
                    <option value={true} >Yes</option>
                    <option value={false}>No</option>
                  </select>
                  <br/>
                  <h3 className="sub-form-title">Kitchen?</h3>
                  <select className='form-control'
                          name='kitchen'
                          value={this.state.kitchen} 
                          onChange={this.handleInputChange}>
                    <option value={true} >Yes</option>
                    <option value={false}>No</option>
                  </select>
                  <br/>
                  <h3 className="sub-form-title">TV?</h3>
                  <select className='form-control'
                          name='tv'
                          value={this.state.tv} 
                          onChange={this.handleInputChange}>
                    <option value={true} >Yes</option>
                    <option value={false}>No</option>
                  </select>
                  <br/>
                  <br/>
                  
                  
                  <button className="btn btn-secondary mr-2" onClick={() => this.props.history.push('/listings')}>Cancel</button>
                  <button className="btn btn-info" type="submit">Add</button>
                  
              </form>
              {/* Redirect to /listings upon creation or return to form 
                  Can potentially clear redux store */}
              {fireRedirect && (
                <Redirect to={from || '/listings'}/>
               )}
              
            </div>
          </div>
        </div>

      </div>
      
      )
  }
  
  
  
}
// Form might have to be its own component

const mapStateToProps = state => {
  return {
    state: initialState
  }
}

export default connect(mapStateToProps, { createListing })(ListingsNewForm)