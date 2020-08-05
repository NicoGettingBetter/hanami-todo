class SerializableComment < JSONAPI::Serializable::Resource
  type 'comments'

  attributes :text, :schedule_id, :task_id, :created_at, :updated_at
end
