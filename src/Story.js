import React from 'react';

class Story extends React.Component {

	render () {
		const {sceneText} = this.props;
		return (
			<section className="story-text">
			{sceneText.map((text, idx) => <p key={idx}>{text}</p>)}
			</section>
		);
	}
}

export default Story;