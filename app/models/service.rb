class Service < ApplicationRecord
    has_many :rides

    validates :label, :fee, presence: true
end
