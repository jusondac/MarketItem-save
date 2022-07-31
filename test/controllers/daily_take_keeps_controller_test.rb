require "test_helper"

class DailyTakeKeepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_take_keep = daily_take_keeps(:one)
  end

  test "should get index" do
    get daily_take_keeps_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_take_keep_url
    assert_response :success
  end

  test "should create daily_take_keep" do
    assert_difference('DailyTakeKeep.count') do
      post daily_take_keeps_url, params: { daily_take_keep: { customer_id: @daily_take_keep.customer_id } }
    end

    assert_redirected_to daily_take_keep_url(DailyTakeKeep.last)
  end

  test "should show daily_take_keep" do
    get daily_take_keep_url(@daily_take_keep)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_take_keep_url(@daily_take_keep)
    assert_response :success
  end

  test "should update daily_take_keep" do
    patch daily_take_keep_url(@daily_take_keep), params: { daily_take_keep: { customer_id: @daily_take_keep.customer_id } }
    assert_redirected_to daily_take_keep_url(@daily_take_keep)
  end

  test "should destroy daily_take_keep" do
    assert_difference('DailyTakeKeep.count', -1) do
      delete daily_take_keep_url(@daily_take_keep)
    end

    assert_redirected_to daily_take_keeps_url
  end
end
