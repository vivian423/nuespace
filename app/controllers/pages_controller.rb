class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @listings = current_user.listings
    @bookings = current_user.bookings
    @received_bookings = current_user.listings.map do |listing|
      listing.bookings
    end.flatten
  end

end
