class Bid < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :swarm_request
  has_many :raters, :through  => :ratings, :source => :users
  validates_numericality_of :price, :on => :create
  


  
end
