// const initialState = {
//   listings: []
// }

const listingsReducer = (state = [], action) => {
  console.log('In reducer')
  switch(action.type) {
    case 'GET_LISTING':
      console.log(action.listing)
      return action.listing
    case 'GET_LISTINGS':
      console.log(action.listings)
      return action.listings
    case 'ADD_LISTING':
      // Must return original state and append the new state
      return [...state, action.listing]
    default:
      return state
  }
}

export default listingsReducer
