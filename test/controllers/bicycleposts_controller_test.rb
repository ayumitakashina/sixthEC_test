require 'test_helper'

class BicyclepostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicyclepost = bicycleposts(:one)
  end

  test "should get index" do
    get bicycleposts_url
    assert_response :success
  end

  test "should get new" do
    get new_bicyclepost_url
    assert_response :success
  end

  test "should create bicyclepost" do
    assert_difference('Bicyclepost.count') do
      post bicycleposts_url, params: { bicyclepost: { bicyclecategory_id: @bicyclepost.bicyclecategory_id, description: @bicyclepost.description, image: @bicyclepost.image, name: @bicyclepost.name, value: @bicyclepost.value } }
    end

    assert_redirected_to bicyclepost_url(Bicyclepost.last)
  end

  test "should show bicyclepost" do
    get bicyclepost_url(@bicyclepost)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicyclepost_url(@bicyclepost)
    assert_response :success
  end

  test "should update bicyclepost" do
    patch bicyclepost_url(@bicyclepost), params: { bicyclepost: { bicyclecategory_id: @bicyclepost.bicyclecategory_id, description: @bicyclepost.description, image: @bicyclepost.image, name: @bicyclepost.name, value: @bicyclepost.value } }
    assert_redirected_to bicyclepost_url(@bicyclepost)
  end

  test "should destroy bicyclepost" do
    assert_difference('Bicyclepost.count', -1) do
      delete bicyclepost_url(@bicyclepost)
    end

    assert_redirected_to bicycleposts_url
  end
end
