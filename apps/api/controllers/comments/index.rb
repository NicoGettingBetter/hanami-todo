module Api
  module Controllers
    module Comments
      class Index
        include Api::Action
        include JSONAPI::Hanami::Action

        # deserializable_resource :comment, class: DeserializableComment

        # params do
        # end

        def call(params)
          comment_repository = CommentRepository.new
          comments = if params[:comment]
            if params[:comment][:schedule_id]
              comment_repository.by_schedule(params[:comment][:schedule_id])
            elsif params[:comment][:task_id]
              comment_repository.by_task(params[:comment][:task_id])
            end
          else
            comment_repository.all
          end

          self.data = comments
          self.status = 200
        end
      end
    end
  end
end
