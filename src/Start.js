import React from 'react';

class Start extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			name: "",
			gender: "male"
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
			<form onSubmit={this.handleSubmit}>
				<div>
					<p>What is your name: </p>
					<input type="text" value={this.state.name} onChange={this.handleNameChange}/>
				</div>
				<div>
					<p>What gender do you want to date: </p>
					<select value={this.state.gender} onChange={this.handleGenderChange}>
						<option value="male">Male</option>
						<option value="female">Female</option>
					</select>
				</div>
				<div>
					<p></p>
					<input type="submit" value="Submit" disabled={!this.state.name || !this.state.gender}></input>
				</div>
			</form>
		);
	}
};

export default Start;