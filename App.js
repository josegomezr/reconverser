import React from 'react';

import { Router, Scene } from 'react-native-router-flux';

import Start from './views/Start';

export default class App extends React.Component {
  render() {
    return (
      <Router>
        <Scene key="main">
          <Scene key="start" title="Reconversión Monetaria" component={Start} />
        </Scene>
      </Router>
    );
  }
}