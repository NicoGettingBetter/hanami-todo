module Api
  module Controllers
    module Tasks
      class Update
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :task, class: DeserializableTask

        params do
          required(:id).filled(:str?)
          required(:task).schema do
            required(:title).filled(:str?)
            required(:description).filled(:str?)
            required(:completed).filled(:bool?)
            required(:estimation).filled(:float?)
          end
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
