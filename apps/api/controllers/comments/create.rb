module Api
  module Controllers
    module Comments
      class Create
        include Api::Action
        include JSONAPI::Hanami::Action

        deserializable_resource :comment, class: DeserializableComment

        params do
          required(:comment).schema do
            required(:text).filled(:str?)
          end
        end

        def call(params)
          repo = CommentRepository.new
          comment = repo.create(params[:comment])

          self.data = comment
          self.status = 201
        end
      end
    end
  end
end
