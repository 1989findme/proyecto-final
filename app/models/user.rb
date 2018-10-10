class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

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

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end

end
