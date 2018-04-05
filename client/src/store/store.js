import {
  createStore,
  applyMiddleware,
  combineReducers,
  compose
} from 'redux'
import thunk from 'redux-thunk'
import rootReducer from '../reducers/index'

const middleware = [thunk]


// Export the store by combining the it from the rootReducer, applying the middleware to allow syncronous calls, and redux dev tools
const store = createStore(
                  rootReducer, 
                  compose(applyMiddleware(thunk), 
                  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()));

export default store