class SwarmRequest < ActiveRecord::Base
  
  acts_as_mappable :auto_geocode => true
  
  belongs_to :user
  has_many :bids
  scope :open, where(:auction_closed => false)
#  scope :new, lambda { |cr_at| where("created_at < ?", created_at) }

  validates_numericality_of :suggested_price, :on => :create
  
  def geocoded?
    self.lat.present? && self.lng.present?
  end
  

end
