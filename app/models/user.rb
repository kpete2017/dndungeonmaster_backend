class User < ApplicationRecord
    has_secure_password

    has_many :npcs
    has_many :players
    has_many :notes
    has_many :regions
    has_many :rotations

    validates :username, uniqueness: true
end
