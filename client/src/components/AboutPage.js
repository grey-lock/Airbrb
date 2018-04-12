import React from 'react'

const AboutPage = props => (
  <div className="about">
    <div className="container">
      <h2>About</h2>
      <p>Airbrb is a full stack application inspired by Airbnb. The front end is made with JavaScript, utilizing the React & Redux frameworks. The back end is created with Ruby on Rails. The app is styled with an open source Bootstrap theme with custom CSS.</p>
      <h3>Curious about the code in this project?</h3>
        <div className="icon-box">
          <a href="https://github.com/TheInvalidNonce/AirBrB"><i className="fa fa-github" aria-hidden="true"></i></a>
        </div>
      <h3>Contact Info</h3>
        <div className="icon-box">
          <a href="https://theinvalidnonce.github.io/"><i className="fa fa-home" aria-hidden="true"></i></a>
          <a href="mailto:jszubert87@gmail.com"><i className="fa fa-envelope-o" aria-hidden="true"></i></a>
          <a href="https://www.linkedin.com/in/januszszubert/" ><i className="fa fa-linkedin" aria-hidden="true"></i></a>
          <a href="https://angel.co/janusz-s" ><i className="fa fa-angellist" aria-hidden="true"></i></a>
        </div>
    </div>
  </div>
);

export default AboutPage;