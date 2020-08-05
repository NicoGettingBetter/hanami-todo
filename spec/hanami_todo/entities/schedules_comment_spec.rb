require 'spec_helper'

RSpec.describe SchedulesComment, type: :entity do
  let(:schedule) { Fabricate.create(:schedule) }
  let(:comment) { Fabricate.create(:comment) }

  it 'can be initialised with attributes' do
    schedule_comment = described_class.new(schedule_id: schedule.id, comment_id: comment.id)
    expect(schedule_comment.schedule_id).to eq schedule.id
    expect(schedule_comment.comment_id).to eq comment.id
  end
end
