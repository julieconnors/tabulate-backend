class RideSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :horse_id, :training_option_id
end
