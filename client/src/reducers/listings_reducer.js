const listingsReducer = (state = {}, action) => {
  console.log('In reducer')
  switch(action.type) {
    case 'GET_LISTING':
      return action.listing
    case 'GET_LISTINGS':
      return action.listings
    case 'ADD_LISTING':
      return [...state, action.listing]
    default:
      return state
  }
}

export default listingsReducer