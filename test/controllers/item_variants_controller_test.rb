require "test_helper"

class ItemVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_variant = item_variants(:one)
  end

  test "should get index" do
    get item_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_item_variant_url
    assert_response :success
  end

  test "should create item_variant" do
    assert_difference('ItemVariant.count') do
      post item_variants_url, params: { item_variant: { name: @item_variant.name } }
    end

    assert_redirected_to item_variant_url(ItemVariant.last)
  end

  test "should show item_variant" do
    get item_variant_url(@item_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_variant_url(@item_variant)
    assert_response :success
  end

  test "should update item_variant" do
    patch item_variant_url(@item_variant), params: { item_variant: { name: @item_variant.name } }
    assert_redirected_to item_variant_url(@item_variant)
  end

  test "should destroy item_variant" do
    assert_difference('ItemVariant.count', -1) do
      delete item_variant_url(@item_variant)
    end

    assert_redirected_to item_variants_url
  end
end
