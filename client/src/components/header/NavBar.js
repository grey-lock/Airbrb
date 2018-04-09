import React from 'react'
import { Link } from 'react-router-dom'
import img from '../../assets/img/abnb-logo.png'

const NavBar = () => {
  return (
    <div>
      <nav className="navbar navbar-expand-lg navbar-light bg-light">
        <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        
        <div className="collapse navbar-collapse" id="navbarColor03">
          <ul className="navbar-nav mr-auto" id='nav-left'>
            <li className="nav-item active">
              <Link to='/' className='nav-link'><img src={img} alt='abnb-logo'/></Link>
            </li>
          </ul>
          <ul className="navbar-nav mr-auto" id='nav-right'>
            <li className="nav-item">
              <Link to='/listings' className='nav-link'>Homes</Link>
            </li>
            <li className="nav-item">
              <Link to='/listings/new'className="nav-link">Become a host</Link>
            </li>
            <li className="nav-item">
              <Link to='/about' className='nav-link'>About</Link>
            </li>
          </ul>
        </div>
      </nav>
    </div>
    )
}

export default NavBar