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
  setSettings: (name, gender) => dispatch(setSettings(name, gender)),
  restartGame: () => window.location.reload()
//  restartGame: () => dispatch(restartGame())
});

const  App = (props) => {
  if (false || props.ending) {
    return (
      <div className="ending">
        <h1 className="title">The End!</h1>
        <button type="button" className="btn btn-primary btn-lg" onClick={props.restartGame}>Restart</button>
        <p className="credits">Created For TerribleHack VR by: Yangzi Guo, Milena Bukal, Maddy Leadbetter<br></br>
          Special thanks to environmental consultant Allie Leadbetter
        </p>
      </div>
    );
  } 
  else if(!props.name || !props.gender) {
    return (
      <Start setSettings={props.setSettings}/>
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
