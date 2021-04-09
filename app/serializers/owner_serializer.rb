class OwnerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :horses
end
