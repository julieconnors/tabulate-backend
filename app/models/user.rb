class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true 
    has_many :services
    has_many :owners
    has_many :horses
end
