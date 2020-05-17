import { gameLoop, MAKE_CHOICE, SET_SETTINGS, ink } from "./actions";

export const INITIAL_STATE = {
  ending: false,
  name: null,
  gender: null,
  ...gameLoop()
};

export default (state = INITIAL_STATE, action) => {
  switch (action.type) {
    case MAKE_CHOICE:
      return {
        ...state,
        ...action
      };
    case SET_SETTINGS:
    ink.UnbindExternalFunction("get_name");
    ink.UnbindExternalFunction("get_bird_gender");
    ink.BindExternalFunction("get_name", () => {
      console.log(action.name)
      return action.name;
    });
    ink.BindExternalFunction("get_bird_gender", () => {
      console.log(action.gender)
      return action.gender;
    });
      return Object.assign({}, state, {
        name: action.name,
        gender: action.gender
      })
default:
      return state;
  }
};