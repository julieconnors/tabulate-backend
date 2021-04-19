class Horse < ApplicationRecord
  belongs_to :owner
  has_many :rides

  validates :name, :owner_id, presence: true


end
