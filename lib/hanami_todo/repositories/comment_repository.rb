class CommentRepository < Hanami::Repository
  associations do
    has_one :schedules_comment
    has_one :schedule, through: :schedules_comment
    has_one :tasks_comment
    has_one :task, through: :tasks_comment
  end

  def find_with_schedules_comments(id)
    aggregate(:schedules_comment).where(id: id).map_to(Comment).one
  end

  def find_with_tasks_comments(id)
    aggregate(:tasks_comment).where(id: id).map_to(Comment).one
  end
end
