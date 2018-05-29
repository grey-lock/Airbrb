import React, { Component } from 'react';
import { connect } from 'react-redux'


class Search extends React {
  constructor(props) {
    super(props)
    
    // Always remember to set a default state
    this.state = {
      address: '',
      checkIn: '',
      checkOut: '',
    }
  }

  const VALID_CHARS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '/'];

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



}


export default Search