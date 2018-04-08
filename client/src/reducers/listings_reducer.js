// const initialState = {
//   listings: []
// }

const listingsReducer = (state = [], action) => {
  // console.log('In reducerc')
  switch(action.type) {
    case 'GET_LISTING':
      return action.listing
    case 'GET_LISTINGS':
      // console.log(action.listings)
      return action.listings
    case 'ADD_LISTING':
      // Do not mutate the original state and create and append the new state
      return [...state, action.listing]
      // Add delete listing action
    default:
      return state
  }
}

export default listingsReducer
