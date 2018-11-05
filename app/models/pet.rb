class Pet < ApplicationRecord
  validates :user_id, presence: true
  validates :photo, presence: true
  mount_uploaders :photo, PhotoUploader
  belongs_to :user
  enum size: [:enano, :chico, :mediano, :grande, :gigante]
  enum age: ["De 1 a 4 meses", "De 5 a 8 meses", "De 9 a 12 meses",
   "2 a 3 Años", "4 a 5 Años", "6 a 7 Años","8 años o más"]
end
