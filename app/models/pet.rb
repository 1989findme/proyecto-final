class Pet < ApplicationRecord
  validates :user_id, presence: true
  validates :photo, presence: true
  mount_uploaders :photo, PhotoUploader
  belongs_to :user
  enum size: [:enano, :chico, :mediano, :grande, :gigante]
end
