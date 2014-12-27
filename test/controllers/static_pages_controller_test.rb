require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  # self-defined func to git rid of duplication in title test
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  # gets an action and verifies (via an assertion) that the result is a success. home and help action
  # Here the use of get indicates that our tests expect the Home and Help pages to be ordinary web pages, accessed using a GET request

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end
