require "application_system_test_case"

class TimelogsTest < ApplicationSystemTestCase
  setup do
    @timelog = timelogs(:one)
  end

  test "visiting the index" do
    visit timelogs_url
    assert_selector "h1", text: "Timelogs"
  end

  test "should create timelog" do
    visit timelogs_url
    click_on "New timelog"

    fill_in "Activity", with: @timelog.activity_id
    fill_in "Date", with: @timelog.date
    fill_in "Minutes", with: @timelog.minutes
    fill_in "User", with: @timelog.user_id
    click_on "Create Timelog"

    assert_text "Timelog was successfully created"
    click_on "Back"
  end

  test "should update Timelog" do
    visit timelog_url(@timelog)
    click_on "Edit this timelog", match: :first

    fill_in "Activity", with: @timelog.activity_id
    fill_in "Date", with: @timelog.date
    fill_in "Minutes", with: @timelog.minutes
    fill_in "User", with: @timelog.user_id
    click_on "Update Timelog"

    assert_text "Timelog was successfully updated"
    click_on "Back"
  end

  test "should destroy Timelog" do
    visit timelog_url(@timelog)
    click_on "Destroy this timelog", match: :first

    assert_text "Timelog was successfully destroyed"
  end
end
