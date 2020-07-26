module Api
  module Controllers
    module Comments
      class Index
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :comment, class: DeserializableComment

        params do
          required(:schedule_id).filled(:str?)
          required(:task_id).filled(:str?)
        end

        def call(params)
          comment_repository = CommentRepository.new
          comments = if params[:comment][:schedule_id]
            comment_repository.by_schedule(params[:comment][:schedule_id])
          elsif params[:comment][:task_id]
            comment_repository.by_task(params[:comment][:task_id])
          end

          self.data = comments
          self.status = 200
        end
      end
    end
  end
end
