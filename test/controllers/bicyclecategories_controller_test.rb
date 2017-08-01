require 'test_helper'

class BicyclecategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicyclecategory = bicyclecategories(:one)
  end

  test "should get index" do
    get bicyclecategories_url
    assert_response :success
  end

  test "should get new" do
    get new_bicyclecategory_url
    assert_response :success
  end

  test "should create bicyclecategory" do
    assert_difference('Bicyclecategory.count') do
      post bicyclecategories_url, params: { bicyclecategory: { name: @bicyclecategory.name } }
    end

    assert_redirected_to bicyclecategory_url(Bicyclecategory.last)
  end

  test "should show bicyclecategory" do
    get bicyclecategory_url(@bicyclecategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicyclecategory_url(@bicyclecategory)
    assert_response :success
  end

  test "should update bicyclecategory" do
    patch bicyclecategory_url(@bicyclecategory), params: { bicyclecategory: { name: @bicyclecategory.name } }
    assert_redirected_to bicyclecategory_url(@bicyclecategory)
  end

  test "should destroy bicyclecategory" do
    assert_difference('Bicyclecategory.count', -1) do
      delete bicyclecategory_url(@bicyclecategory)
    end

    assert_redirected_to bicyclecategories_url
  end
end
