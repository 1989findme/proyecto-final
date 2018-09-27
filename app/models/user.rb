class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :interactions_one,
            class_name: 'Interaction',
            foreign_key: :user_one_id

  has_many :interactions_two,
            class_name: 'Interaction',
            foreign_key: :user_two_id

  has_many :matches,
          class_name: 'match',
          foreign_key: :user_one_id

  has_many :pets

  enum rol: [:admin, :guest, :client]


  def self.random(user_id)
    User.where('id !=?', user_id).order("random()").limit(1).first
  end
end
