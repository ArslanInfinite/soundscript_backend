class User < ApplicationRecord
    belongs_to :sound

    validates :username, presence: true,  uniqueness: true
end
