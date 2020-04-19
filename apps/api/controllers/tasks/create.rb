module Api
  module Controllers
    module Tasks
      class Create
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :task, class: DeserializableTask

        params do
          required(:task).schema do
            required(:title).filled(:str?)
          end
        end

        def call(params)
          repo = TaskRepository.new
          task = repo.create(params[:task])

          self.data = task
          self.status = 201
        end
      end
    end
  end
end
