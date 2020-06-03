class Comment < Hanami::Entity
  def schedule_id
    CommentRepository.new.find_with_schedules_comments(id).schedules_comment&.schedule_id
  end

  def task_id
    CommentRepository.new.find_with_tasks_comments(id).tasks_comment&.task_id
  end
end
