import React from 'react';
import Scene from './Scene';

class Start extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			name: "",
			gender: "MALE"
		}
		this.handleNameChange = this.handleNameChange.bind(this);
		this.handleGenderChange = this.handleGenderChange.bind(this);
		this.handleSubmit = this.handleSubmit.bind(this)
	}

	handleNameChange(event) {
		this.setState({name: event.target.value})
	}
	handleGenderChange(event) {
		this.setState({gender: event.target.value})
	}
	handleSubmit(event) {
		this.props.setSettings(this.state.name, this.state.gender)
	}

	render() {
		return (
			<div className="Start">
				<h1 className="title">
					Water Bird Dating Simulator
				</h1>
				<Scene tags={{background: "cover"}} />
				<form onSubmit={this.handleSubmit}>
					<div>
						<p>What is your name: </p>
						<input type="text" value={this.state.name} onChange={this.handleNameChange}/>
					</div>
					<div>
						<p>What gender do you want to date: </p>
						<select value={this.state.gender} onChange={this.handleGenderChange}>
							<option value="MALE">Male</option>
							<option value="FEMALE">Female</option>
							<option value="OTHER">Other</option>
						</select>
					</div>
					<div>
						<p></p>
						<input type="submit" value="Submit" disabled={!this.state.name || !this.state.gender}></input>
					</div>
				</form>
			</div>
		);
	}
};

export default Start;