class User < ApplicationRecord
  has_secure_password
  belongs_to :keyboard, optional: true # I only put this in because of an issue with seeding keyboards and users, with users not being able to recognize the existence of a keyboard
end
