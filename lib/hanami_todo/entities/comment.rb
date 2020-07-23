class Comment < ApplicationEntity
  validations do
    required(:text) { filled? & str? }
  end

  def schedule_id
    CommentRepository.new.find_with_schedules_comment(id).schedules_comment&.schedule_id
  end

  def task_id
    CommentRepository.new.find_with_tasks_comment(id).tasks_comment&.task_id
  end

  def item
    if schedule_id
      ScheduleRepository.new.find(schedule_id)
    else
      TaskRepository.new.find(task_id)
    end
  end
end
