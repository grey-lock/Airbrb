class Api::ListingsController < ApplicationController
  
  def index
    if params[:id].present?
      @listings = Listing.where(id: params[:id])
      
    # Search by Map
    # elsif params.values_at(*%i( min_lng max_lng min_lat max_lat )).all?(&:present?)
    #   @listings = Listing.search(search_params.to_h.symbolize_keys)
    #   # render json: @listings
    
    # Show random listings
    elsif search_params_empty
      @listings = Listing.all

    # Search by fields
    else
      @listings = Listing.all
      if search_params[:address].present?
        @listings = @listings.find_by(search_params[:address])
      end
    end
    
    # Randomly order the retrieved listings
    @listings = @listings.order("RANDOM()").limit(36)
    render json: @listings
  end
  
  def show
    set_listing
    render json: @listing
  end
  
  def create
    @listing = Listing.new(listing_params)
    
    if @listing.save
      render json: @listing
    else
      render json: @listing.errors.full_messages, status: 422
    end
  end
  
  private

  
  def set_listing
    @listing = Listing.find_by(id: params[:id])
  end
  
  def listing_params
    params.require(:listing).permit(
      :host_id,
      :title,
      :description,
      :address,
      :lat,
      :lng,
      :price,
      :prop_type,
      :room_type,
      :num_guests,
      :bedrooms,
      :beds,
      :rules,
      :img_url,
      :wifi,
      :kitchen,
      :ac,
      :tv
      )
  end
  
  # Search by these values
  def search_params
    params.permit(
      :title,
      :address,
      :prop_type,
      :room_type,
      :price,
      :num_guests,
      :bedrooms,
      :beds,
      :min_lng,
      :max_lng,
      :min_lat,
      :max_lat
    )
  end
  
  def search_params_empty
    search_params.reject{|_, v| v.blank?}.empty?
  end
end
