module Api
  module Controllers
    module Comments
      class Show
        include Api::Action
        include JSONAPI::Hanami::Action

        def call(params)
          comment_repository = CommentRepository.new
          comment = comment_repository.first

          self.data = comment
          self.status = 200
        end
      end
    end
  end
end
