class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show ]
  before_action :set_listing, only: %i[show edit update destroy]

  def index
    @listings = policy_scope(Listing)

    if params[:name].present? && params[:address].present?
      @listings = @listings.search_by_name_and_description(params[:name])
      @listings = @listings.near(params[:address], 150)
    elsif params[:name].present?
      @listings = @listings.search_by_name_and_description(params[:name])
    elsif params[:address].present?
      @listings = @listings.near(params[:address], 150)
    end

    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { listing: listing }),
        marker_html: render_to_string(partial: "marker", locals: { listing: listing })
      }
    end
  end

  def show
    authorize @listing
  end

  def new
    @listing = Listing.new
    authorize @listing
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    authorize @listing
    if @listing.save
      redirect_to @listing, notice: "Listing was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @listing
  end

  def update
    if @listing.update(listing_params)
      redirect_to @listing, notice: "Listing was successfully edited."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @listing
    @listing.destroy
    flash[:success] = "The item was successfully destroyed."
    redirect_to listings_path, status: :see_other
  end

private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(
      :listing_name, :listing_address, :photo, :listing_amenities, :listing_description, photos: []
    )
  end
end
