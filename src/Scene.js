import React from "react";

// TODO: background image urls can go here
const backgroundImages = {
	test: "https://blogs.thomsonreuters.com/answerson/wp-content/uploads/sites/3/2016/10/University-of-Waterloo-800x450.jpg"
}

const defaultImage = "";

export default ({ tags }) => {
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