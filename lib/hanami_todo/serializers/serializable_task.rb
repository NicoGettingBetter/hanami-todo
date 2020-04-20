class SerializableTask < JSONAPI::Serializable::Resource
  type 'tasks'

  attributes :title, :schedule_id, :description, :completed, :estimation, :created_at, :updated_at
end
