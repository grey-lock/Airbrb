import React from 'react';
import ReactDOM from 'react-dom';
import store from './store/store'
import { Provider } from 'react-redux'
import './index.css';
import 'font-awesome/css/font-awesome.min.css';
import App from './App';
import { BrowserRouter } from 'react-router-dom';
import registerServiceWorker from './registerServiceWorker';

ReactDOM.render(
                <Provider store={store}>
                {/* Provider is a wrapper of a React Component to connect redux to react */}
                {/*An outer *Router component is required to render any items within App component*/}
                  <BrowserRouter>
                    <App />
                  </BrowserRouter>
                </Provider>
                ,
                document.getElementById('root'));
                
registerServiceWorker();
