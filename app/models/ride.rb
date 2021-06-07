class Ride < ApplicationRecord
  belongs_to :horse
  belongs_to :service

  validates :date, :horse_id, :service_id, presence: true 
end
