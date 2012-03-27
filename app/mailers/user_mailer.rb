class UserMailer < ActionMailer::Base
  default :from => "swarmdelivery@gmail.com"
  

  def bid_notification(bid)
    @swarm_requester = bid.swarm_request
    @bidder = bid.user
    @bid = bid
    
    
#    attachments.inline['logo.png'] = File.read('public/images/logo.png')
    
    mail(:to => bid.swarm_request.user.email, :subject => "Swarm Delivery Bid")
  end

  def accept_bid_notification(bid)
    @swarm_requester = bid.swarm_request
    @bidder = bid.user
    @bid = bid
    
#    attachments.inline['logo.png'] = File.read('public/images/logo.png')
    
    mail(:to => bid.user.email, :subject => "Swarm Delivery Bid Accepted")
  end

  def accept_price_now(swarm_request, user)
    @swarm_requester = swarm_request
    @user = user
    
#    attachments.inline['logo.png'] = File.read('public/images/logo.png')
    
    mail(:to => user.email, :subject => "Swarm Delivery Bid Accepted")
  end
  
end


