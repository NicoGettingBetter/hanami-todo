require 'spec_helper'

RSpec.describe TasksComment, type: :entity do
  let(:schedule) { Fabricate.create(:schedule) }
  let(:task) { Fabricate.create(:task, schedule_id: schedule.id) }
  let(:comment) { Fabricate.create(:comment) }

  it 'can be initialised with attributes' do
    task_comment = described_class.new(task_id: task.id, comment_id: comment.id)
    expect(task_comment.task_id).to eq task.id
    expect(task_comment.comment_id).to eq comment.id
  end
end
