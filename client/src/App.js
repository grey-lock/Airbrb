import React, { Component } from 'react';
import './App.css';
import { Route, Switch } from 'react-router-dom'
import Home from './components/Home'
// import LoginFormContainer from './components/LoginFormContainer'
import ListingPageContainer from './components/listings/item/ListingPageContainer'
import ListingsContainer from './components/listings/ListingsContainer'
import ListingsNewForm from './components/listings/ListingsNewForm'
import AboutPage from './components/AboutPage'
import NavBar from './components/header/NavBar'
import 'bootswatch/dist/lumen/bootstrap.css'

class App extends Component {
  render() {
    
    return (
      <div className="App" id='app'>
        <header className="App-header">
          <NavBar />
        </header>
        <div className="App-intro">
          <Switch>
            <Route exact path="/" component={Home} />
            <Route exact path='/listings' component={ListingsContainer} />
            <Route exact path='/listings/new' component={ListingsNewForm} />
            <Route path='/listings/:listingId' component={ListingPageContainer} />
            <Route exact path='/about' component={AboutPage} />
            {/*<LoginFormContainer />*/}
          </Switch>
      
        </div>


      </div>
    );
  }
}

export default App;
