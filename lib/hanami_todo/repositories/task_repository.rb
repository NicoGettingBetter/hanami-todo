class TaskRepository < Hanami::Repository
  associations do
    belongs_to :schedule

    has_many :tasks_comments
    has_many :comments, through: :tasks_comments
  end

  def by_schedule(schedule_id)
    tasks.where(tasks[:schedule_id].is(schedule_id))
  end
end
