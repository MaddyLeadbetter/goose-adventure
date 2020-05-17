import React from 'react';

// TODO: background image urls can go here
const backgroundImages = {
	cover: "https://github.com/MaddyLeadbetter/goose-adventure/blob/master/images/Goose%20banner.png"
}

const defaultImage = "";

export default ({ tags }) => {
	console.log(tags)
	return (
		<section
			className="scene"
			style={{
				backgroundImage: `url(${
					tags && backgroundImages[tags.background]
					? backgroundImages[tags.background]
					: defaultImage
				})`
			}}
		/>
	);
};