import { createStore, applyMiddleware, compose } from 'redux'
import thunk from 'redux-thunk'
import rootReducer from '../reducers/index'
import logger from 'redux-logger'

// Push the logger to the middlewares array
const middlewares = [thunk]
middlewares.push(logger)

const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

// Export the store by combining the it from the rootReducer, applying the middleware to allow syncronous calls, and redux dev tools/logger
const store = createStore(
                  rootReducer, 
                  composeEnhancers(applyMiddleware(...middlewares))
                  )

export default store