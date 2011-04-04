class UserMailer < ActionMailer::Base
  default :from => "kevin@elfurioso.com"
  

  def bid_notification(bid)
    @swarm_requester = bid.swarm_request
    @bidder = bid.user
    @bid = bid
    
    
    attachments.inline['logo.png'] = File.read('public/images/logo.png')
    
    mail(:to => bid.swarm_request.user.email, :subject => "Swarm Delivery Bid")
  end

  def accept_bid_notification(swarm_request)
    @swarm_requester = swarm_request
   
    
    
    attachments.inline['logo.png'] = File.read('public/images/logo.png')
    
    mail(:to => swarm_request.bid.user.email, :subject => "Swarm Delivery Bid Accepted")
  end
end


