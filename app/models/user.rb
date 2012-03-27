class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :http_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :swarm_requests
  has_many :bids
  has_many :ratings
  has_many :rated_bids, :through => :ratings, :source => :bids
 
  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  
end
