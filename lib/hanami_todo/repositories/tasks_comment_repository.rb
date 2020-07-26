class TasksCommentRepository < Hanami::Repository
  associations do
    belongs_to :task
    belongs_to :comment
  end

  def by_task(id)
    tasks_comments.where(task_id: id).map_to(TasksComment).to_a
  end
end
