
//TODO:

// get user's name
export const get_name = () => {
	let name = null;
	while (name === null || name === '' || name === undefined) {
		name = prompt("Please enter your name", "Ducky McDuckface");
	}
	return name;
}

// get_gender()
