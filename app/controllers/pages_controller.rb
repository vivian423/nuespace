class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bookings = current_user.bookings
  end

end
