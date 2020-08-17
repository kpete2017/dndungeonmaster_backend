class User < ApplicationRecord
    has_secure_password

    has_many :npcs
    has_many :players
    has_many :notes

    validates :username, uniqueness: true
end
