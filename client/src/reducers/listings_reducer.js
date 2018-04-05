const listingsReducer = (state = {}, action) => {
  switch(action.type) {
    case 'GET_LISTINGS':
      return action.listings
    case 'CREATE_LISTING':
      return [...state, action.listing]
    default:
      return state
  }
}

export default listingsReducer