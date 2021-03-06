import React from 'react';

// TODO: background image urls can go here
const backgroundImages = {
	cover: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/Goose%20banner.png",
	You: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/You.png",
	CliffEdge: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/CliffEdge.jpg",
	"Coolgoose-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/Cool%20goose%20-%20Good.png",
	CoolGooseJetski: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/CoolGooseJetski.jpg",
	"Loon-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/Loon%20-%20Good.png",
	LoonAndSwan: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/SwanAndLoon.png",
	stabbyloon: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/stabby%20loon.png",
	"Swan-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/Swan%20-%20Good.png",
	"Swan-Bad": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/Swan%20-%20Bad.png",
	"Whitegoose-Good": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/White%20goose%20-%20Good.png",
	BloodyRake: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/BloodyRake.png",
	GooseAndCanadaGoose: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/GooseAndCanadaGoose.png",
	LoonAndCanadaGoose: "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/LoonAndCanadaGoose.png",
	"CanadaGoose-Bad": "https://raw.githubusercontent.com/MaddyLeadbetter/goose-adventure/master/src/images/Canada%20Goose%20-%20Bad.png",
}

const defaultImage = backgroundImages.You;

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