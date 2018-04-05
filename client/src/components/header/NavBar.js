import React from 'react'
import { Link } from 'react-router-dom'

const NavBar = () => {
  return (
    <div className='nav-bar'>
      <Link to='/'className='nav-link'>Home</Link>
    </div>
    )
}

export default NavBar