class User < ActiveRecord::Base

  ajaxful_rateable :stars => 5, :dimensions => [:reputation], :allow_update => true
  ajaxful_rater
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :http_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :swarm_requests
  has_many :bids

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  
end
