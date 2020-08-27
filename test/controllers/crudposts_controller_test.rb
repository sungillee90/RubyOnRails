require 'test_helper'

class CrudpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crudpost = crudposts(:one)
  end

  test "should get index" do
    get crudposts_url
    assert_response :success
  end

  test "should get new" do
    get new_crudpost_url
    assert_response :success
  end

  test "should create crudpost" do
    assert_difference('Crudpost.count') do
      post crudposts_url, params: { crudpost: { description: @crudpost.description, title: @crudpost.title } }
    end

    assert_redirected_to crudpost_url(Crudpost.last)
  end

  test "should show crudpost" do
    get crudpost_url(@crudpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_crudpost_url(@crudpost)
    assert_response :success
  end

  test "should update crudpost" do
    patch crudpost_url(@crudpost), params: { crudpost: { description: @crudpost.description, title: @crudpost.title } }
    assert_redirected_to crudpost_url(@crudpost)
  end

  test "should destroy crudpost" do
    assert_difference('Crudpost.count', -1) do
      delete crudpost_url(@crudpost)
    end

    assert_redirected_to crudposts_url
  end
end
