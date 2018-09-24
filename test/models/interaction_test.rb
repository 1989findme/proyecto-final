require 'test_helper'

class InteractionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'if both users like each other then generate a match' do
   # @interaction1 = interactions(:one)
   sender = users(:one)
   reciever = users(:two)
   interaction = Interaction.new(user_one: reciever, user_two: sender, like: true).save!
   assert_equal 1, Match.count
  end
end
