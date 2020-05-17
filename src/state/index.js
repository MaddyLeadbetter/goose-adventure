import { createStore } from "redux";
import { devToolsEnhancer } from "redux-devtools-extension";
import inkGame, { INITIAL_STATE } from "./reducers";
const store = createStore(inkGame, INITIAL_STATE, devToolsEnhancer());
export default store;