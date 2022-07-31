require "application_system_test_case"

class ItemVariantsTest < ApplicationSystemTestCase
  setup do
    @item_variant = item_variants(:one)
  end

  test "visiting the index" do
    visit item_variants_url
    assert_selector "h1", text: "Item Variants"
  end

  test "creating a Item variant" do
    visit item_variants_url
    click_on "New Item Variant"

    fill_in "Name", with: @item_variant.name
    click_on "Create Item variant"

    assert_text "Item variant was successfully created"
    click_on "Back"
  end

  test "updating a Item variant" do
    visit item_variants_url
    click_on "Edit", match: :first

    fill_in "Name", with: @item_variant.name
    click_on "Update Item variant"

    assert_text "Item variant was successfully updated"
    click_on "Back"
  end

  test "destroying a Item variant" do
    visit item_variants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item variant was successfully destroyed"
  end
end
