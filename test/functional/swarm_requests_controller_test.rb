require 'test_helper'

class SwarmRequestsControllerTest < ActionController::TestCase
  setup do
    @swarm_request = swarm_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swarm_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swarm_request" do
    assert_difference('SwarmRequest.count') do
      post :create, :swarm_request => @swarm_request.attributes
    end

    assert_redirected_to swarm_request_path(assigns(:swarm_request))
  end

  test "should show swarm_request" do
    get :show, :id => @swarm_request.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @swarm_request.to_param
    assert_response :success
  end

  test "should update swarm_request" do
    put :update, :id => @swarm_request.to_param, :swarm_request => @swarm_request.attributes
    assert_redirected_to swarm_request_path(assigns(:swarm_request))
  end

  test "should destroy swarm_request" do
    assert_difference('SwarmRequest.count', -1) do
      delete :destroy, :id => @swarm_request.to_param
    end

    assert_redirected_to swarm_requests_path
  end
end
