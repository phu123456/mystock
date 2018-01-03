require 'test_helper'

class GreasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grease = greases(:one)
  end

  test "should get index" do
    get greases_url
    assert_response :success
  end

  test "should get new" do
    get new_grease_url
    assert_response :success
  end

  test "should create grease" do
    assert_difference('Grease.count') do
      post greases_url, params: { grease: { truck_id: @grease.truck_id } }
    end

    assert_redirected_to grease_url(Grease.last)
  end

  test "should show grease" do
    get grease_url(@grease)
    assert_response :success
  end

  test "should get edit" do
    get edit_grease_url(@grease)
    assert_response :success
  end

  test "should update grease" do
    patch grease_url(@grease), params: { grease: { truck_id: @grease.truck_id } }
    assert_redirected_to grease_url(@grease)
  end

  test "should destroy grease" do
    assert_difference('Grease.count', -1) do
      delete grease_url(@grease)
    end

    assert_redirected_to greases_url
  end
end
