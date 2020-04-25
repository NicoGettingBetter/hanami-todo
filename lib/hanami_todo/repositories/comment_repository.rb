class CommentRepository < Hanami::Repository
  associations do
    belongs_to :commentable, polymorphic: true
  end
end
