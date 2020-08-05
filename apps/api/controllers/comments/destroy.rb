module Api
  module Controllers
    module Comments
      class Destroy
        include Api::Action
        include JSONAPI::Hanami::Action

        params do
          required(:id).filled(:str?)
        end

        def call(params)
          repo = CommentRepository.new
          comment = repo.delete(params[:id])

          self.data = comment
          self.status = 200
        end
      end
    end
  end
end
