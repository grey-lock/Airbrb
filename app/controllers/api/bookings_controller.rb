class Api::BookingsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @bookings = current_user.bookings
    render json: @bookings
  end
  
  def show
    @booking = Booking.find_by(id:params[:id])
    render json: @booking
  end
  
  def create
    params = booking_params.dup
    params[:check_in] = Time.strptime(booking_params[:check_in], "%m/%d/%Y") if booking_params[:check_in]
    params[:check_out] = Time.strptime(booking_params[:check_out], "%m/%d/%Y") if booking_params[:check_out]
    @booking = Booking.new(params)
    
    if @booking.save
      render json: @booking
    else
      render json: @booking.errors.full_messages, status: 422
    end
  end
  
  def destroy
    @booking = Booking.find_by(id: params[:id])
    @booking.destroy
    render json: @booking
  end
  
  private
  
  def booking_params
    params.require(:booking).permit(
                                    :user_id,
                                    :listing_id,
                                    :check_in,
                                    :check_out,
                                    :status
                                    )
  end
  
end
