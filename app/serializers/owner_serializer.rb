class OwnerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :horses, :rides, :user_id
end
