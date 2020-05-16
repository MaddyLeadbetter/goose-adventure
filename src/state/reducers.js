import { gameLoop, MAKE_CHOICE, SET_SETTINGS } from "./actions";
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
      return Object.assign({}, state, {
        name: action.name,
        gender: action.gender
      })
default:
      return state;
  }
};