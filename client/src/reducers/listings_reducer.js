const initialState = {
  listings: [],
  currentRoom: null
}

const listingsReducer = (state = initialState, action) => {
  // console.log('In reducer')
  Object.freeze(state); // Freeze the original state
  let newState = Object.assign({}, state); // Create a new temp state
  
  switch(action.type) {
    case 'GET_LISTING':
      return Object.assign({}, newState, { // Copy the new state
        listings: action.listings,
        currentRoom: action.listing // Current room is the current state
      })
    case 'GET_LISTINGS':
      // console.log(action.listings)
      return Object.assign({}, initialState, { // Copy the original state
        listings: action.listings // listings gets the original state before it gets updated on the single listing request
      })
    case 'ADD_LISTING':
      // Use the initial state and copy over the new item
      return [...initialState.listings, action.listing]
    default:
      return state
  }
}

export default listingsReducer
