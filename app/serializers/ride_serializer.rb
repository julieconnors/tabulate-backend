class RideSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :horse_id, :service_id, :horse, :service
end
