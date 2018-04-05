import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { Route, Link, Switch } from 'react-router-dom'
import Home from './components/Home'
import LoginFormContainer from './components/LoginFormContainer'

class App extends Component {
  render() {
    return (
      <div className="App" id='app'>
        <header className="App-header">
          <img src={logo} className="Apgstp-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <p className="App-intro">
          <Route exact path="/" component={Home} />

        </p>
        <p>
          <LoginFormContainer />
        </p>
        
      </div>
    );
  }
}

export default App;
