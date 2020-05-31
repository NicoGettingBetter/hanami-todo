class SchedulesCommentRepository < Hanami::Repository
  associations do
    belongs_to :schedule
    belongs_to :task
  end
end
