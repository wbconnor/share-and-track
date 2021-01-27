require 'test_helper'

class ActtivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acttivity = acttivities(:one)
  end

  test "should get index" do
    get acttivities_url
    assert_response :success
  end

  test "should get new" do
    get new_acttivity_url
    assert_response :success
  end

  test "should create acttivity" do
    assert_difference('Acttivity.count') do
      post acttivities_url, params: { acttivity: { name: @acttivity.name, quantity: @acttivity.quantity, time: @acttivity.time, weight: @acttivity.weight } }
    end

    assert_redirected_to acttivity_url(Acttivity.last)
  end

  test "should show acttivity" do
    get acttivity_url(@acttivity)
    assert_response :success
  end

  test "should get edit" do
    get edit_acttivity_url(@acttivity)
    assert_response :success
  end

  test "should update acttivity" do
    patch acttivity_url(@acttivity), params: { acttivity: { name: @acttivity.name, quantity: @acttivity.quantity, time: @acttivity.time, weight: @acttivity.weight } }
    assert_redirected_to acttivity_url(@acttivity)
  end

  test "should destroy acttivity" do
    assert_difference('Acttivity.count', -1) do
      delete acttivity_url(@acttivity)
    end

    assert_redirected_to acttivities_url
  end
end
