import { connect } from 'react-redux'
import ListingPage from './ListingPage'

const mapStateToProps = state => {
  
}

const mapDispatchToProps = dispatch => {
  console.log('mapDispatchToProps', dispatch)

}

export default connect(mapStateToProps, mapDispatchToProps)(ListingPage)