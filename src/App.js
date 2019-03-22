import React, { Component } from 'react';
import BiodataForm from './Component/Biodata/Form';
import Welcome from './welcome.css';

class App extends Component {
  render() {
    return (
      <div id="container">
        <BiodataForm />
    </div>
    );
  }
}

export default App;
