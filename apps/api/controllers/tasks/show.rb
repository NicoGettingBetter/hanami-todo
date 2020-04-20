module Api
  module Controllers
    module Tasks
      class Show
        include Api::Action
        include JSONAPI::Hanami::Action

        def call(params)
          task_repository = TaskRepository.new
          task = task_repository.first

          self.data = task
          self.status = 200
        end
      end
    end
  end
end
