import React from 'react';
import { connect } from "react-redux";
import Scene from "./Scene";
import Choices from "./Choices";
import Story from "./Story";
import { makeChoice } from "./state/actions";
import './App.css';

const stateToProps = state => ({
  tags: state.tags,
  currentChoices: state.currentChoices,
  sceneText: state.sceneText,
  ending: state.ending
});

const dispatchToProps = dispatch => ({
  makeChoice: idx => dispatch(makeChoice(idx))
});

const  App = (props) => {
  if (props.ending) {
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
