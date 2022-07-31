require "application_system_test_case"

class ScheduleTakeKeepsTest < ApplicationSystemTestCase
  setup do
    @schedule_take_keep = schedule_take_keeps(:one)
  end

  test "visiting the index" do
    visit schedule_take_keeps_url
    assert_selector "h1", text: "Schedule Take Keeps"
  end

  test "creating a Schedule take keep" do
    visit schedule_take_keeps_url
    click_on "New Schedule Take Keep"

    fill_in "Daily take keep", with: @schedule_take_keep.daily_take_keep_id
    click_on "Create Schedule take keep"

    assert_text "Schedule take keep was successfully created"
    click_on "Back"
  end

  test "updating a Schedule take keep" do
    visit schedule_take_keeps_url
    click_on "Edit", match: :first

    fill_in "Daily take keep", with: @schedule_take_keep.daily_take_keep_id
    click_on "Update Schedule take keep"

    assert_text "Schedule take keep was successfully updated"
    click_on "Back"
  end

  test "destroying a Schedule take keep" do
    visit schedule_take_keeps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Schedule take keep was successfully destroyed"
  end
end
