require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get microposts_index_url
    assert_response :success
  end

  test "should get new" do
    get microposts_new_url
    assert_response :success
  end

  test "should get edit" do
    get microposts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get microposts_delete_url
    assert_response :success
  end

end
