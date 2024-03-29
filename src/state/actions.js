import { Story } from 'inkjs/dist/ink';
import storyContent from '../ink_exports/final-goose-adventure.json';

export const ink = new Story(storyContent);
export const MAKE_CHOICE = "MAKE_CHOICE";
export const SET_SETTINGS = "SET_SETTINGS";
export const RESTART_GAME = "RESTART_GAME";
export const NEXT = "NEXT";

ink.BindExternalFunction("get_name", () => {
	return '';
});

ink.BindExternalFunction("get_bird_gender", () => {
	return '';
});

export const getGlobalVars = variablesState =>
  Object.keys(variablesState._globalVariables).reduce(
	(acc, key) => ({
		...acc,
		[key]: variablesState[key]
	}),
	{}
	);

export const getTags = tags =>
	tags.reduce(
		(acc, tag) => ({ ...acc, 
    	[tag.split(": ")[0]]: tag.split(": ")[1] }),
		{}
	);

export const gameLoop = () => {
	const sceneText = [];
	let currentTags = [];
	if (ink.canContinue) {
		sceneText.push(ink.Continue());
		currentTags = ink.currentTags;
	}
	const { currentChoices, variablesState } = ink;
	if (!ink.canContinue && !currentChoices.length)
		throw new GameOverError("no more choices");
	let gameData = {
		globals: getGlobalVars(variablesState),
		currentChoices,
		sceneText,
		currentTags
	}
	if (Object.keys(currentTags).length > 0) {
		gameData.tags = getTags(currentTags);
	}

	return gameData;
};

export const makeChoice = (choiceIdx, choiceTxt) => {
	ink.ChooseChoiceIndex(choiceIdx);
	try {
		const gameData = gameLoop();
		return {
			type: MAKE_CHOICE,
			choiceTxt,
			...gameData
		};
	} catch (e) {
		if (e instanceof GameOverError && e.reason === "no more choices") {
			return {
				type: MAKE_CHOICE,
				ending: true
			};
		}
		throw e;
	}
};

export const next = () => {
	try {
		const gameData = gameLoop();
		return {
			type: NEXT,
			...gameData
		};
	} catch (e) {
		if (e instanceof GameOverError && e.reason === "no more choices") {
			return {
				type: MAKE_CHOICE,
				ending: true
			};
		}
		throw e;
	}
}

export const setSettings = (name, gender) => {
	return {
		type: SET_SETTINGS,
		name,
		gender
	}
}

export const restartGame = () => {
	return { type: RESTART_GAME };
}

function GameOverError(reason = "", ...rest) {
	var instance = new Error(`Game Over, ${reason}`, ...rest);
	instance.reason = reason;
	Object.setPrototypeOf(instance, Object.getPrototypeOf(this));
	if (Error.captureStackTrace) {
		Error.captureStackTrace(instance, GameOverError);
	}
	return instance;
}
GameOverError.prototype = Object.create(Error.prototype, {
	constructor: {
	 	value: Error,
	 	enumerable: false,
	 	writable: true,
	 	configurable: true
	}
});
if (Object.setPrototypeOf) {
	Object.setPrototypeOf(GameOverError, Error);
} else {
	GameOverError.__proto__ = Error;
}