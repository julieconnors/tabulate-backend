class HorseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :owner_id, :owner, :rides
end
