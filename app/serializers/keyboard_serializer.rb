class KeyboardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title 
  has_many :users
end
