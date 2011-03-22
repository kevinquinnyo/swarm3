class SwarmRequest < ActiveRecord::Base
  
  belongs_to :user
  has_many :bids
  
end
