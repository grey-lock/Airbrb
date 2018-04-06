import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { Route, Link, Switch } from 'react-router-dom'
import Home from './components/Home'
import LoginFormContainer from './components/LoginFormContainer'
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
          <Route exact path="/" component={Home} />
          <LoginFormContainer />
        </div>
        
      </div>
    );
  }
}

export default App;
