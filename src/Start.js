import React from 'react';
import cover from './images/Goose banner.png'

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
				<img src={cover} alt="Banner" style={{height: '300px'}}/>
				<div className="card">
					<form className="form" onSubmit={this.handleSubmit}>
						<div className="form-group">
							<label>What is your name: </label>
							<input type="text" value={this.state.name} onChange={this.handleNameChange}/>
						</div>
						<div className="form-group">
							<label>What gender do you want to date: </label>
							<select value={this.state.gender} onChange={this.handleGenderChange}>
								<option value="MALE">Male</option>
								<option value="FEMALE">Female</option>
								<option value="OTHER">Other</option>
							</select>
						</div>
						<div className="form-group">
							<input type="submit" className="btn btn-primary btn-sm" value="Start" disabled={!this.state.name || !this.state.gender}></input>
						</div>
					</form>
				</div>
			</div>
		);
	}
};

export default Start;