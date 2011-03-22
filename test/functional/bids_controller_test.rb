require 'test_helper'

class BidsControllerTest < ActionController::TestCase
  setup do
    @bid = bids(:bid_one)
    @swarm_request = swarm_requests(:cheezeburger)
    sign_in users(:kevin)
  end

  test "should get index" do
    get :index, :swarm_request_id => @swarm_request.to_param
    assert_response :success
    assert_not_nil assigns(:bids)
  end

  test "should get new" do
    get :new, :swarm_request_id => @swarm_request.to_param
    assert_response :success
  end

  test "should create bid" do
    assert_difference('Bid.count') do
      post :create, :bid => @bid.attributes, :swarm_request_id => @swarm_request.to_param
    end

    assert_redirected_to swarm_request_bid_path(:swarm_request_id => @swarm_request.to_param, :id => assigns(:bid).to_param)
  end

  test "should show bid" do
    get :show, :id => @bid.to_param, :swarm_request_id => @swarm_request.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bid.to_param, :swarm_request_id => @swarm_request.to_param
    assert_response :success
  end

  test "should update bid" do
    put :update, :id => @bid.to_param, :bid => @bid.attributes, :swarm_request_id => @swarm_request.to_param
    assert_redirected_to swarm_request_bid_path(:swarm_request_id => @swarm_request.to_param, :id => assigns(:bid).to_param)
  end

  test "should destroy bid" do
    assert_difference('Bid.count', -1) do
      delete :destroy, :id => @bid.to_param, :swarm_request_id => @swarm_request.to_param
    end

    assert_redirected_to swarm_request_bids_path(:swarm_request_id => @swarm_request.to_param)
  end
end
