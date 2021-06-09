class Horse < ApplicationRecord
  belongs_to :owner
  belongs_to :user
  has_many :rides

  validates :name, :owner_id, presence: true
end
