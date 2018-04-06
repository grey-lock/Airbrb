import React from 'react'
import ListingsContainer from '../components/listings/ListingsContainer'

const Home = (props) => {
  return (
    <div className='jumbotron'>
      <div className='header-greeting'>
        <strong>AirBrB</strong><h1> Book unique homes and experiences all over the world.</h1>
      </div>
      <ListingsContainer/>
    </div>
    )
}

export default Home