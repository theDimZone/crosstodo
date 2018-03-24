require 'test_helper'

class TodoListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todo_list_index_url
    assert_response :success
  end

  test "should get update" do
    get todo_list_update_url
    assert_response :success
  end

  test "should get create" do
    get todo_list_create_url
    assert_response :success
  end

end
