class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :label, :fee, :rides, :user_id
end
