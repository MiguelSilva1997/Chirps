class ChirpSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :text
end
