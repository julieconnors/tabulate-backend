class Horse < ApplicationRecord
  belongs_to :owner
  has_many :rides
end
