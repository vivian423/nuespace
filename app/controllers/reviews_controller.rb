class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    @policy = false
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.user = current_user
    authorize @booking
    if @review.save
      redirect_to dashboard_path, notice: "Review was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = policy_scope(Review)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:success] = "The item was successfully destroyed."
    redirect_to listing_path(params[:listing_id]), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
