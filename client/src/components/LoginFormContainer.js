import React from 'react'

class LoginFormContainer extends React.Component {
  render() {
    return (
      <div>
      <h1 style={{marginTop: "20vh", marginBottom: "5vh"}}>
          Banana Management System
        </h1>
        <form>
          <label htmlFor="email">Email: </label>
          <br />
          <input
            name="email"
            id="email"
            type="email"
          />
          <br /><br />
          <label htmlFor="password">Password:</label>
          <br />
          <input
            name="password"
            id="password"
            type="password"
          />
          </form>
          <br />
          <button
            onClick={this.login}
          >
              Login
          </button>
        <br />
        <button
          onClick={this.getBananas}
          style={{marginTop: "10vh"}}
          >
          Get Bananas
        </button>
      </div>
      )
  }
}

export default LoginFormContainer