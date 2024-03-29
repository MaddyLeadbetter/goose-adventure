import React from 'react';
import { connect } from 'react-redux';
import Scene from './Scene';
import Choices from './Choices';
import Story from './Story';
import { makeChoice, setSettings, next } from './state/actions';
import './App.css';
import Start from './Start';

const stateToProps = state => ({
  tags: state.tags,
  currentChoices: state.currentChoices,
  sceneText: state.sceneText,
  ending: state.ending,
  name: state.name,
  gender: state.gender,
  choiceHistory: state.choiceHistory
});

const dispatchToProps = dispatch => ({
  makeChoice: (idx, txt) => dispatch(makeChoice(idx, txt)),
  setSettings: (name, gender) => dispatch(setSettings(name, gender)),
  restartGame: () => window.location.reload(),
  next: () => dispatch(next()),
});

const  App = (props) => {
  if (props.ending) {
    return (
      <div className="ending">
        <h1 className="title">The End!</h1>
        <button type="button" className="btn btn-primary btn-lg" onClick={props.restartGame}>Restart</button>
        <iframe className="feedback" title="feedback" src="https://docs.google.com/forms/d/e/1FAIpQLSdf6O-pnttyiLxxNj8ymHHAhiC11k7i8SCcTAC-OSFArXjL_Q/viewform?embedded=true">Loading…</iframe>
        <p className="credits">Created For TerribleHack VR by: Yangzi, Milena, Maddy<br></br>
          Special thanks to environmental consultant Allie
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
        <Choices choices={props.currentChoices} makeChoice={props.makeChoice} onContinue={props.next} /> 
      </div>
    );
  }
}

export default connect(stateToProps, dispatchToProps)(App);
