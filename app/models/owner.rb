class Owner < ApplicationRecord
    has_many :horses
    has_many :rides, through: :horses
end
