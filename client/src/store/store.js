import { createStore, applyMiddleware, compose } from 'redux'
import thunk from 'redux-thunk'
import rootReducer from '../reducers/index'


const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

// Export the store by combining the it from the rootReducer, applying the middleware to allow syncronous calls, and redux dev tools
const store = createStore(
                  rootReducer, 
                  composeEnhancers(applyMiddleware(thunk))
                  )

export default store