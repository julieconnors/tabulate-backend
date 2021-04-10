class Ride < ApplicationRecord
  belongs_to :horse
  belongs_to :training_option

  validates :date, :horse_id, :training_option_id, presence: true

  
end
