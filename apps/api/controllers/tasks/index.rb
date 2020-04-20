module Api
  module Controllers
    module Tasks
      class Index
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :task, class: DeserializableTask

        params do
          required(:schedule_id).filled(:str?)
        end

        def call(params)
          task_repository = TaskRepository.new
          tasks = task_repository.by_schedule(params[:task][:schedule_id])

          self.data = tasks
          self.status = 200
        end
      end
    end
  end
end
