class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :keyboard_id, :keyboard
  belongs_to :keyboard
end
