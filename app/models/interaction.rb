class Interaction < ApplicationRecord
  belongs_to :user_one, class_name: 'User'
  belongs_to :user_two, class_name: 'User'

  before_save :check_match

  def check_match
    sender = user_one
    reciever = user_two
    if Interaction.where(user_one: reciever,
                         user_two: sender,
                         like: true)
                  .any?
      Match.create(user_one: sender, user_two: receiver)
    end
  end
end
