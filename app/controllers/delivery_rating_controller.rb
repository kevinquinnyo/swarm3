class DeliveryRatingController < ApplicationController
before_filter :set_bid

  def create
    @delivery_rating = @bid.delivery_ratings.new :delivery_rating => params[:delivery_rating]
    if @delivery_rating.save
      redirect_to delivery_ratings_path(@user), :notice => "Rating successful."
    else
      redirect_to delivery_ratings_path(@user), :notice => "Something went wrong."
    end
  end

  def update
    @delivery_rating = DeliveryRating.find(params[:id])
    @delivery_rating.update_attribute :delivery_rating, params[:delivery_rating]
  end

  private

  def set_bid
    @bid = Bid.find(params[:bid_id])
  end
end

end
