class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :label, :fee, :rides
end
