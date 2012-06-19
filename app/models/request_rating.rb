class RequestRating < ActiveRecord::Base
  belongs_to :swarm_request
  validates_presence_of :swarm_request
  validates_numericality_of :value
  #validates_inclusion_of :value, :in => 1..100
end
