class Pet < ApplicationRecord
  mount_uploaders :photo, PhotoUploader
end
