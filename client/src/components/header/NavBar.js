import React from 'react'
import { Link } from 'react-router-dom'
import img from '../../img/abnb-logo.png'

const NavBar = () => {
  return (
    <div className='nav-bar'>
      <div className='left-nav'>
        <Link to='/' className='nav-link'><img src={img} alt='abnb-logo'/></Link>
        <Link to='/listings' className='nav-link'>Homes</Link>
        <Link to='/about' className='nav-link'>About</Link>
      </div>
    </div>
    )
}

export default NavBar