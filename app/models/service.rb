class Service < ApplicationRecord
    has_many :rides
    belongs_to :user

    validates :label, :fee, presence: true
end
