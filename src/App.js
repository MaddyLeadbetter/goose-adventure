import React from 'react';
import { connect } from 'react-redux';
import Scene from './Scene';
import Choices from './Choices';
import Story from './Story';
import { makeChoice, setSettings } from './state/actions';
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
  setSettings: (name, gender) => dispatch(setSettings(name, gender))
});

const  App = (props) => {
  if (props.ending) {
    // TODO: add restart button
    return (
      <div className="ending">The End!</div>
    );
  } else {
    return (
      <div className="Form">
        {(!props.name || !props.gender) ? <Start setSettings={props.setSettings}/> :
        <div className="App">
          <Scene tags={props.tags} />
          <Story sceneText={props.sceneText} />
          <Choices choices={props.currentChoices} makeChoice={props.makeChoice} /> 
          </div> }
      </div>
    );
  }
}

export default connect(stateToProps, dispatchToProps)(App);
