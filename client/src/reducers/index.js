import { combineReducers } from 'redux'
import listingsReducer from './listings_reducer'

const rootReducer = combineReducers({
  listings: listingsReducer
})

export default rootReducer