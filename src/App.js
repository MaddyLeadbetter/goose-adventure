import React from 'react';
import { connect } from 'react-redux';
import Scene from './Scene';
import Choices from './Choices';
import Story from './Story';
import { makeChoice, chooseName, chooseGender } from './state/actions';
import './App.css';

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
  chooseName: name => dispatch(chooseName(name)),
  chooseGender: gender => dispatch(chooseGender(gender))
});

const  App = (props) => {
  if (!props.name) {
    let name = null;
	  while (name === null || name === '' || name === undefined) {
		  name = prompt("Please enter your name", "Ducky McDuckface");
	  }
	  props.chooseName(name)
  }
  else if (props.ending) {
    return (
      <div className="ending">The End!</div>
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
