class ScheduleRepository < Hanami::Repository
  associations do
    has_many :tasks
    has_many :schedules_comments
    has_many :comments, through: :schedules_comments
  end

  def with_comments
    aggregate(:comments).map_to(Schedule).to_a
  end

  def with_schedules_comments
    aggregate(:schedules_comments).map_to(Schedule).to_a
  end
end
