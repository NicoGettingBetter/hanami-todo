class CommentRepository < Hanami::Repository
  associations do
    has_one :schedules_comment
    has_one :schedule, through: :schedules_comment
    has_one :tasks_comment
    has_one :task, through: :tasks_comment
  end

  def find_with_schedules_comment(id)
    aggregate(:schedules_comment).where(id: id).map_to(Comment).one
  end

  def find_with_tasks_comment(id)
    aggregate(:tasks_comment).where(id: id).map_to(Comment).one
  end

  def create_with_parent(params)
    if params[:schedule_id]
      comment_params = params.merge(schedules_comment: { schedule_id: params[:schedule_id] })
      assoc(:schedules_comment).create(comment_params)
    else
      comment_params = params.merge(tasks_comment: { task_id: params[:task_id] })
      assoc(:tasks_comment).create(comment_params)
    end
  end
end
