import React from 'react';
import ReactDOM from 'react-dom';
import { createStore, applyMiddleware, compose } from 'redux'
import thunk from 'redux-thunk'
import rootReducer from './reducers'
import { Provider } from 'react-redux'
import './index.css';
import App from './App';
import { HashRouter } from 'react-router-dom';
import registerServiceWorker from './registerServiceWorker';


const store = createStore(rootReducer, compose(applyMiddleware(thunk), window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()));

ReactDOM.render(
                <Provider store={store}>
                {/*An outer Router or Hashrouter component is required to render any items within App component*/}
                  <HashRouter>
                    <App />
                  </HashRouter>
                </Provider>
                ,
                document.getElementById('root'));
registerServiceWorker();
