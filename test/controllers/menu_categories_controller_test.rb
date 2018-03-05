require 'test_helper'

class MenuCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menu_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get menu_categories_show_url
    assert_response :success
  end

  test "should get edit" do
    get menu_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get menu_categories_update_url
    assert_response :success
  end

  test "should get delete" do
    get menu_categories_delete_url
    assert_response :success
  end

end
