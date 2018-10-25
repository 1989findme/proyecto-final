class Interaction < ApplicationRecord
  belongs_to :user_one, class_name: 'User'
  belongs_to :user_two, class_name: 'User'

  after_save :check_match

  def check_match
    # if Interaction.where(user_one: self.user_one,
    #                      user_two: self.user_two)
    #               .any?
    #   Match.create(user_one: self.user_one, user_two: self.user_two)
    # end
    interaction = Interaction.where(user_one: self.user_two, user_two: self.user_one)
    unless interaction.empty?
      Match.create(user_one_id: self.user_one.id, user_two_id: self.user_two.id)
    end
  end
end
