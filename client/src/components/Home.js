import React from 'react'
import ListingsContainer from '../components/listings/ListingsContainer'
import Map from './gmap/Map'


const Home = (props) => {
  return (
    <div className='jumbotron'>
      <div className='header-greeting'>
        <h1><strong>Airbrb</strong> <br/>Book unique homes and experiences all over the world.</h1>
      </div>
      <div className='col-md-8'>
        <ListingsContainer />
      </div>
      <div className='col-md-4'>
        <Map className='map-search-container'/>
      </div>
      
      
    </div>
    )
}

export default Home