class TaskRepository < Hanami::Repository
  associations do
    belongs_to :schedule

    has_many :comments
  end

  def by_schedule(schedule_id)
    tasks.where(tasks[:schedule_id].is(schedule_id))
  end
end
