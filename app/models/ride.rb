class Ride < ApplicationRecord
  belongs_to :horse
  belongs_to :training_option
end
