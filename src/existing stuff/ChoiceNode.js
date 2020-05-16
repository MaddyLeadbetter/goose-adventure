export default class ChoiceNode {
	constructor(text, points) {
		this.text = text;
		this.points = points;
		this.children = []
	}

	checkIfEnd() {
		return this.children.length === 0
	}
}