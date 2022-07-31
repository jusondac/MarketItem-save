require "application_system_test_case"

class DailyTakeKeepsTest < ApplicationSystemTestCase
  setup do
    @daily_take_keep = daily_take_keeps(:one)
  end

  test "visiting the index" do
    visit daily_take_keeps_url
    assert_selector "h1", text: "Daily Take Keeps"
  end

  test "creating a Daily take keep" do
    visit daily_take_keeps_url
    click_on "New Daily Take Keep"

    fill_in "Customer", with: @daily_take_keep.customer_id
    click_on "Create Daily take keep"

    assert_text "Daily take keep was successfully created"
    click_on "Back"
  end

  test "updating a Daily take keep" do
    visit daily_take_keeps_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @daily_take_keep.customer_id
    click_on "Update Daily take keep"

    assert_text "Daily take keep was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily take keep" do
    visit daily_take_keeps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily take keep was successfully destroyed"
  end
end
