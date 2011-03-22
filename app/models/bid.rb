class Bid < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :swarm_request
end
