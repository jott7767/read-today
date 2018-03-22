require 'test_helper'

class ConnectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get connects_index_url
    assert_response :success
  end

  test "should get new" do
    get connects_new_url
    assert_response :success
  end

  test "should get show" do
    get connects_show_url
    assert_response :success
  end

  test "should get edit" do
    get connects_edit_url
    assert_response :success
  end

end
