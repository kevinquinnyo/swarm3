require 'test_helper'

class SwarmRequestTest < ActiveSupport::TestCase
  
  test "is geocoded if it has a lat and lng" do
    swarm_request = SwarmRequest.new(:item => "a cheezeburger",
                                     :lat => nil,
                                     :lng => nil)
    assert !swarm_request.geocoded?
    
    swarm_request.lat = 33.77
    swarm_request.lng = -84.36
    assert swarm_request.geocoded?
  end
  
end
