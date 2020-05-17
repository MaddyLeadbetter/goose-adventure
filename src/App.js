import React from 'react';
import { connect } from 'react-redux';
import Scene from './Scene';
import Choices from './Choices';
import Story from './Story';
import { makeChoice, setSettings, restartGame } from './state/actions';
import './App.css';
import Start from './Start';

const stateToProps = state => ({
  tags: state.tags,
  currentChoices: state.currentChoices,
  sceneText: state.sceneText,
  ending: state.ending,
  name: state.name,
  gender: state.gender
});

const dispatchToProps = dispatch => ({
  makeChoice: idx => dispatch(makeChoice(idx)),
  setSettings: (name, gender) => dispatch(setSettings(name, gender)),
  restartGame: () => dispatch(restartGame())
});

const  App = (props) => {
  if (props.ending) {
    return (
      <div className="ending">
        <h3>The End!</h3>
        <button type="button" onClick={props.restartGame}>Restart</button>
      </div>
    );
  } 
  else if(!props.name || !props.gender) {
    return (
      <div className="Form">
        <Start setSettings={props.setSettings}/>
      </div>
    );
  } else {
    return (
      <div className="App">
        <Scene tags={props.tags} />
        <Story sceneText={props.sceneText} />
        <Choices choices={props.currentChoices} makeChoice={props.makeChoice} /> 
      </div>
    );
  }
}

export default connect(stateToProps, dispatchToProps)(App);
