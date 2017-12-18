require 'test_helper'

class DiscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discription = discriptions(:one)
  end

  test "should get index" do
    get discriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_discription_url
    assert_response :success
  end

  test "should create discription" do
    assert_difference('Discription.count') do
      post discriptions_url, params: { discription: { detail: @discription.detail, occur: @discription.occur, tyre_id: @discription.tyre_id } }
    end

    assert_redirected_to discription_url(Discription.last)
  end

  test "should show discription" do
    get discription_url(@discription)
    assert_response :success
  end

  test "should get edit" do
    get edit_discription_url(@discription)
    assert_response :success
  end

  test "should update discription" do
    patch discription_url(@discription), params: { discription: { detail: @discription.detail, occur: @discription.occur, tyre_id: @discription.tyre_id } }
    assert_redirected_to discription_url(@discription)
  end

  test "should destroy discription" do
    assert_difference('Discription.count', -1) do
      delete discription_url(@discription)
    end

    assert_redirected_to discriptions_url
  end
end
