class ApplicationDeserializableResourse < JSONAPI::Deserializable::Resource
  def self.call(payload)
    new(payload['data']).to_h
  end
end
