module Api
  module Controllers
    module Tasks
      class Update
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :task, class: DeserializableTask

        params do
          required(:id).filled(:str?)
          required(:task)
        end

        def call(params)
          repo = TaskRepository.new
          task = repo.update(params[:id], params[:task])

          self.data = task
          self.status = 200
        end
      end
    end
  end
end
