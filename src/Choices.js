import React from 'react';

class Choices extends React.Component {

	render() {
		const { choices, makeChoice, onContinue } = this.props;
		if (choices.length === 0) {
			return (
				<section className="choices">
					<ul>
						<li onClick={() => onContinue()}>
							Continue
						</li>
					</ul>
				</section>
			);
		} 
		return (
			<section className="choices">
				<h3>Make a decision...</h3>
				<ul>
					{choices.map(choice => (
						<li key={choice.index} onClick={() => makeChoice(choice.index, choice.text)}>
							{choice.text}
						</li>
					))}
				</ul>
			</section>
		);
	}
}

export default Choices;