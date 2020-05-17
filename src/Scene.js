import React from 'react';

// TODO: background image urls can go here
const backgroundImages = {
	cover: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/Goose%20banner.png",
	You: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/You.png",
	CliffEdge: "",
	"Coolgoose-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/Cool%20goose%20-%20Good.png",
	CoolGooseJetski: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/CoolGooseJetski.jpg",
	"Loon-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/Loon%20-%20Good.png",
	LoonAndSwan: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/LoonAndSwan.JPG",
	stabbyloon: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/stabby%20loon.JPG",
	"Swan-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/Swan%20-%20Good.png",
	"Whitegoose-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/White%20goose%20-%20Good.png",
	BloodyRake: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/BloodyRake.png",
	GooseAndCanadaGoose: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/GooseAndCanadaGoose.png",
	LoonAndCanadaGoose: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/images/LoonAndCanadaGoose.png",
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