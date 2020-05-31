class SerializableComment < JSONAPI::Serializable::Resource
  type 'comments'

  attributes :text, :schedule_id, :created_at, :updated_at

  def schedule_id
    object.schedules_comment.schedule_id
  end

  def task_id
    object.tasks_comment.task_id
  end
end
