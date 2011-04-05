class SwarmRequest < ActiveRecord::Base
  
  acts_as_mappable :auto_geocode => true
  
  belongs_to :user
  has_many :bids
  scope :open, where(:auction_closed => false)
  
  def geocoded?
    self.lat.present? && self.lng.present?
  end
  

end
