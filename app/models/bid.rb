class Bid < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :swarm_request
  validates_numericality_of :price, :on => :create
  


  
end
