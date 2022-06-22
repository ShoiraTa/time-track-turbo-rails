require "test_helper"

class TimelogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timelog = timelogs(:one)
  end

  test "should get index" do
    get timelogs_url
    assert_response :success
  end

  test "should get new" do
    get new_timelog_url
    assert_response :success
  end

  test "should create timelog" do
    assert_difference("Timelog.count") do
      post timelogs_url, params: { timelog: { activity_id: @timelog.activity_id, date: @timelog.date, minutes: @timelog.minutes, user_id: @timelog.user_id } }
    end

    assert_redirected_to timelog_url(Timelog.last)
  end

  test "should show timelog" do
    get timelog_url(@timelog)
    assert_response :success
  end

  test "should get edit" do
    get edit_timelog_url(@timelog)
    assert_response :success
  end

  test "should update timelog" do
    patch timelog_url(@timelog), params: { timelog: { activity_id: @timelog.activity_id, date: @timelog.date, minutes: @timelog.minutes, user_id: @timelog.user_id } }
    assert_redirected_to timelog_url(@timelog)
  end

  test "should destroy timelog" do
    assert_difference("Timelog.count", -1) do
      delete timelog_url(@timelog)
    end

    assert_redirected_to timelogs_url
  end
end
