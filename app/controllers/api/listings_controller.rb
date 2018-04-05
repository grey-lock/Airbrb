class Api::ListingsController < ApplicationController
  
  def index
    if params[:id].present?
      @listings = Listing.where(id: params[:id])
    
    # Show random 
    elsif search_params_empty
      @listings = Listing.all

    # Search by fields
    else
      @listings = Listing.all
      if search_params[:address].present?
        @listings = @listings.find_by(search_params[:address])
      end
    end
    
    # Randomly order the retrived listings
    @listings = @listings.order("RANDOM()").limit(36).includes(:img_url)
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
    @listing = Listing.find_by(params[:id])
  end
  
  def listing_params
    params.require(:listing).permit(
      :host_id,
      :title,
      :description,
      :address,
      :lat,
      :long,
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
  
  def search_params
    params.permit(
      :title,
      :address,
      :prop_type,
      :room_type,
      :price,
      :num_guests,
      :bedrooms,
      :beds
    )
  end
  
  def search_params_empty
    search_params.reject{|_, v| v.blank?}.empty?
  end
end
