class SerializableSchedule < JSONAPI::Serializable::Resource
  type 'schedules'

  attribute :title
end
