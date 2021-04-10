class OwnerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :horses, :rides
end
