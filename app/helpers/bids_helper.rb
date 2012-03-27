module BidsHelper
  
  def rating_ballot
    if @rating = current_user.ratings.find_by_bid_id(params[:id])
      @rating
    else
      current_user.ratings.new
    end
  end

  def current_user_rating
    if @rating = current_user.ratings.find_by_swarm_bid_id(params[:id])
      @rating.score
    else
     "N/A"
    end
  end  

end
