require 'test_helper'
class InteractionsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
  # test "the truth" do
  #   assert true
  # end
  test 'user should interact with others' do
    current_user = users(:one)
    sign_in(current_user)
    liked_user = users(:two)
    assert_difference('Interaction.count') do
      post interactions_path, params: {user_two_id: liked_user.id, like: true}
  end
    assert_redirected_to users_search_path
  end
end
