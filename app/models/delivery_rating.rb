class DeliveryRating < ActiveRecord::Base
  belongs_to :user		
  validates_presence_of :bid
  validates_inclusion_of :value, :in 1..100	
end
