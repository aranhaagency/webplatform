import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import { composeWithDevTools } from 'redux-devtools-extension';

const initialState = {
    things: [
    ]
};

function rootReducer(state, action) {
    console.log("action", action.type);
    switch (action.type) {
        case "GET_THINGS_SUCCESS":
            return { things: action.json.things };
        case "GET_NGOS_SUCCESS":
            return { ngos: action.json.ngos };
        default:
            return state;
    }
}

export default function configureStore() {
    const store = createStore(
        rootReducer,
        initialState,
        composeWithDevTools(
            applyMiddleware(thunk)
        )
    );
    return store;
}