class RideSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :horse_id, :training_option_id, :horse, :training_option
end
