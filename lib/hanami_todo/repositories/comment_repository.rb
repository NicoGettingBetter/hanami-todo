class CommentRepository < Hanami::Repository
  associations do
    has_one :schedules_comment
    has_one :schedule, through: :schedules_comment
    has_one :tasks_comment
    has_one :task, through: :tasks_comment
  end
end
