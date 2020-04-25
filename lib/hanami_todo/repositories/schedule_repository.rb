class ScheduleRepository < Hanami::Repository
  associations do
    has_many :tasks
    has_many :comments
  end
end
