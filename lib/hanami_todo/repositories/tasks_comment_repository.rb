class TasksCommentRepository < Hanami::Repository
  associations do
    belongs_to :task
    belongs_to :comment
  end
end
