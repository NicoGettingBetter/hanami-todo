class SchedulesCommentRepository < Hanami::Repository
  associations do
    belongs_to :schedule
    belongs_to :task
  end

  def by_schedule(id)
    schedules_comments.where(schedule_id: id).map_to(SchedulesComment).to_a
  end
end
