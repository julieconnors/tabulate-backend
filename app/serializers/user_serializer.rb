class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password, :horses, :owners, :services
end
