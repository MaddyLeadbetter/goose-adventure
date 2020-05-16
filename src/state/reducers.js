import { gameLoop, MAKE_CHOICE, CHOOSE_NAME, CHOOSE_GENDER } from "./actions";
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
    case CHOOSE_NAME:
      return Object.assign({}, state, {
        name: action.name
      })
      case CHOOSE_GENDER:
      return Object.assign({}, state, {
        gender: action.gender
      })
default:
      return state;
  }
};