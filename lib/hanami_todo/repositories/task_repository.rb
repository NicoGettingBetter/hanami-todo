class TaskRepository < Hanami::Repository
  associations do
    belongs_to :schedule
  end
end
