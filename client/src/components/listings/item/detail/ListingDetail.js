import React from 'react'
import bed from '../../../../assets/img/icon_bed.png'
import door from '../../../../assets/img/icon_door.png'
import home from '../../../../assets/img/icon_home.png'
import ppl from '../../../../assets/img/icon_people.png'


const ListingDetail = ({ listing }) => {
  return (
    <div>
      <div className='listing-detail-title listing-detail-bottom'>
        
        {/* listing header info */}
        <div>
          <h2>{listing.title}</h2>
          <p>{listing.address}</p>
          <span>
            <span>{ `${listing.reviews}` + (listing.reviews === 1 ? 'review' : 'reviews') }</span>
          </span>
        </div>

        {/* listing icons */}
        <div className="listing-detail-bottom listing-icon-list">
          <div className="listing-icon-item">
            <img src={ home } alt="Home Icon" />
            <p>{listing.room_type}</p>
          </div>

          <div className="listing-icon-people">
            <img src={ ppl } alt="People Icon" />
            <p>{listing.num_guests} Guests</p>
          </div>

          <div className="listing-icon-door">
            <img src={ door } alt="Door Icon" />
            <p>{listing.bedrooms} Bedrooms</p>
          </div>

          <div className="listing-icon-bed">
            <img src={ bed } alt="Bed Icon" />
            <p>{listing.beds} Beds</p>
          </div>
        </div>
        
        {/* details bottom */}
        <div className="listing-detail-bottom">
          <h3>About this listing</h3>
          <p>{listing.description}</p>
        </div>

        <div className="listing-detail-box">
          <div className="box-title">
            <h4>The space</h4>
          </div>
        <div className="box-info listing-detail-list">
          <ul>
            <li>Accommodates: <strong>{listing.num_guests}</strong></li>
            <li>Bedrooms: <strong>{listing.bedrooms}</strong></li>
            <li>Beds: <strong>{listing.beds}</strong></li>
          </ul>
          <ul>
            <li>Check In: <strong>Anytime after 3PM</strong></li>
            <li>Check Out: <strong>11AM</strong></li>
            <li>Property type: <strong>{listing.prop_type}</strong></li>
            <li>Room type: <strong>{listing.room_type}</strong></li>
          </ul>
        </div>

        {/* amenities */}
        <div className="listing-detail-box">
          <div className="box-title">
            <h4>Amenities</h4>
          </div>
          <div className="box-info listing-detail-list listing-detail-amen">
            <ul>
              <li className={listing.wifi ? "" : "no-amen"}>{listing.wifi ? <i className="fa fa-wifi" aria-hidden="true"></i> : ""} Wireless Internet</li>
              <li className={listing.kitchen ? "" : "no-amen"}>{listing.kitchen ? <i className="fa fa-cutlery" aria-hidden="true"></i> : ""} Kitchen</li>
              <li className={listing.ac ? "" : "no-amen"}>{listing.ac ? <i className="fa fa-snowflake-o" aria-hidden="true"></i> : ""} Air conditioning</li>
              <li className={listing.tv ? "" : "no-amen"}>{listing.tv ? <i className="fa fa-television" aria-hidden="true"></i> : ""} TV</li>
            </ul>

            <ul>
              <li className={listing.wifi ? "" : "no-amen"}>{listing.wifi ? <i className="fa fa-paw" aria-hidden="true"></i> : ""} Pets allowed</li>
              <li className={listing.kitchen ? "" : "no-amen"}>{listing.kitchen ? <i className="fa fa-fire" aria-hidden="true"></i> : ""} Indoor fireplace</li>
              <li className={listing.ac ? "" : "no-amen"}>{listing.ac ? <i className="fa fa-bath" aria-hidden="true"></i> : ""} Bathtub</li>
              <li className={listing.tv ? "" : "no-amen"}>{listing.tv ? <i className="fa fa-gamepad" aria-hidden="true"></i> : ""} Game console</li>
            </ul>
          </div>
        </div>

        


        </div>
      </div>
    </div>
    )
}

export default ListingDetail

