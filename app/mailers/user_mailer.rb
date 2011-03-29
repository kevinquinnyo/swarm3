class UserMailer < ActionMailer::Base
  default :from => "kevin@elfurioso.com"
  def bid_notification(swarm_request)
    mail(:to => swarm_request.user.email, :subject => "Swarm Delivery Bid")
  end
end
