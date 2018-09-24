require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  # test "the truth" do
  #   assert true
  # end
  test 'visit should be logged to access root page' do
    get rooth_path
    assert_response :redirect
  end

  test 'user can access to root page' do
    user = users(:one)
    sign_in(user)
    get rooth_path
    assert_response :success
  end
end
