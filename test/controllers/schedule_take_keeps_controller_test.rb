require "test_helper"

class ScheduleTakeKeepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_take_keep = schedule_take_keeps(:one)
  end

  test "should get index" do
    get schedule_take_keeps_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_take_keep_url
    assert_response :success
  end

  test "should create schedule_take_keep" do
    assert_difference('ScheduleTakeKeep.count') do
      post schedule_take_keeps_url, params: { schedule_take_keep: { daily_take_keep_id: @schedule_take_keep.daily_take_keep_id } }
    end

    assert_redirected_to schedule_take_keep_url(ScheduleTakeKeep.last)
  end

  test "should show schedule_take_keep" do
    get schedule_take_keep_url(@schedule_take_keep)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_take_keep_url(@schedule_take_keep)
    assert_response :success
  end

  test "should update schedule_take_keep" do
    patch schedule_take_keep_url(@schedule_take_keep), params: { schedule_take_keep: { daily_take_keep_id: @schedule_take_keep.daily_take_keep_id } }
    assert_redirected_to schedule_take_keep_url(@schedule_take_keep)
  end

  test "should destroy schedule_take_keep" do
    assert_difference('ScheduleTakeKeep.count', -1) do
      delete schedule_take_keep_url(@schedule_take_keep)
    end

    assert_redirected_to schedule_take_keeps_url
  end
end
