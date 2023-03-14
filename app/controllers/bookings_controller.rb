class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.listing = @listing
    if @booking.save
      redirect_to dashboard_path, notice: "Booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
