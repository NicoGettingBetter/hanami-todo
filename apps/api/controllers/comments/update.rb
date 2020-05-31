module Api
  module Controllers
    module Comments
      class Update
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :comment, class: DeserializableComment

        params do
          required(:id).filled(:str?)
          required(:comment)
        end

        def call(params)
          repo = CommentRepository.new
          comment = repo.update(params[:id], params[:comment])

          self.data = comment
          self.status = 200
        end
      end
    end
  end
end
