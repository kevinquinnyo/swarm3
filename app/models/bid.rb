class Bid < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :swarm_request
  has_many :delivery_ratings, :dependent => :destroy 
  validates_numericality_of :price, :on => :create
  


  
end
