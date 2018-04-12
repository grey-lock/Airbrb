import React from 'react'
import bed from '../../../../assets/img/icon_bed.png'
import door from '../../../../assets/img/icon_door.png'
import home from '../../../../assets/img/icon_home.png'
import ppl from '../../../../assets/img/icon_people.png'


const ListingDetail = ({listing}) => {
  let list = listing.listing // The way this object is getting passed in requires this
  // debugger
  return (
    <div>
      <div className='listing-detail-title listing-detail-bottom'>
        
        {/* listing header info */}
        <div>
          <h2>{list.title}</h2>
          <p>{list.address}</p>
          <span>
            <span>{ `${list.reviews.length}` + (list.reviews.length === 1 ? ' review' : ' reviews') }</span>
          </span>
        </div>

        {/* listing icons */}
        <div className="listing-detail-bottom listing-icon-list">
          <div className="listing-icon-item">
            <img src={ home } alt="Home Icon" />
            <p>{list.room_type}</p>
          </div>

          <div className="listing-icon-people">
            <img src={ ppl } alt="People Icon" />
            <p>{list.num_guests} Guests</p>
          </div>

          <div className="listing-icon-door">
            <img src={ door } alt="Door Icon" />
            <p>{list.bedrooms} Bedrooms</p>
          </div>

          <div className="listing-icon-bed">
            <img src={ bed } alt="Bed Icon" />
            <p>{list.beds} Beds</p>
          </div>
        </div>
        
        {/* details bottom */}
        <div className="listing-detail-bottom">
          <h3>About this listing</h3>
          <p>{list.description}</p>
        </div>

        <div className="listing-detail-box">
          <div className="box-title">
            <h4>The space</h4>
          </div>
        <div className="box-info listing-detail-list">
          <ul>
            <li>Accommodates: <strong>{list.num_guests}</strong></li>
            <li>Bedrooms: <strong>{list.bedrooms}</strong></li>
            <li>Beds: <strong>{list.beds}</strong></li>
          </ul>
          <ul>
            <li>Check In: <strong>Anytime after 3PM</strong></li>
            <li>Check Out: <strong>11AM</strong></li>
            <li>Property type: <strong>{list.prop_type}</strong></li>
            <li>Room type: <strong>{list.room_type}</strong></li>
          </ul>
        </div>

        {/* amenities */}
        <div className="listing-detail-box">
          <div className="box-title">
            <h4>Amenities</h4>
          </div>
          <div className="box-info listing-detail-list listing-detail-amen">
            <ul>
              <li className={list.wifi ? "" : "no-amen"}>{list.wifi ? <i className="fa fa-wifi" aria-hidden="true"></i> : ""} Wireless Internet</li>
              <li className={list.kitchen ? "" : "no-amen"}>{list.kitchen ? <i className="fa fa-cutlery" aria-hidden="true"></i> : ""} Kitchen</li>
              <li className={list.ac ? "" : "no-amen"}>{list.ac ? <i className="fa fa-snowflake-o" aria-hidden="true"></i> : ""} Air conditioning</li>
              <li className={list.tv ? "" : "no-amen"}>{list.tv ? <i className="fa fa-television" aria-hidden="true"></i> : ""} TV</li>
            </ul>

            <ul>
              <li className={list.wifi ? "" : "no-amen"}>{list.wifi ? <i className="fa fa-paw" aria-hidden="true"></i> : ""} Pets allowed</li>
              <li className={list.kitchen ? "" : "no-amen"}>{list.kitchen ? <i className="fa fa-fire" aria-hidden="true"></i> : ""} Indoor fireplace</li>
              <li className={list.ac ? "" : "no-amen"}>{list.ac ? <i className="fa fa-bath" aria-hidden="true"></i> : ""} Bathtub</li>
              <li className={list.tv ? "" : "no-amen"}>{list.tv ? <i className="fa fa-gamepad" aria-hidden="true"></i> : ""} Game console</li>
            </ul>
          </div>
        </div>
        {/* prices/disclaimer */}
        <div className="listing-detail-box">
          <div className="box-title">
            <h4>Prices</h4>
          </div>
          <div className="box-info">
            <ul>
              <li>Extra people: <strong>No Charge</strong></li>
              <li>Weekly Discount: <strong>10%</strong></li>
              <li>Cleaning Fee: <strong>${ Math.floor(list.price / 8) }</strong></li>
            </ul>
            <div className="price-disclaimer">
              <strong>Always communicate through Airbrb</strong>
              <p>For the safety of all our hosts and guests, never transfer funds or communicate outside of the Airbrb website or app.</p>
            </div>
          </div>
        </div>

        {/* description */}
        <div className="listing-detail-box">
          <div className="box-title">
            <h4>Description</h4>
          </div>
          <div className="box-info">
            <p>{list.description}</p>
          </div>
        </div>
        
        <div className="listing-detail-box">
          <div className="box-title">
            <h4>House Rules</h4>
          </div>
          <div className="box-info">
            <p>{list.rules}</p>
          </div>
        </div>


        </div>
      </div>
    </div>
    )
}

export default ListingDetail

