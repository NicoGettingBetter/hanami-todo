require 'spec_helper'

RSpec.describe Api::Controllers::Comments::Destroy, type: :action do
  let(:action) { described_class.new }
  let(:schedule) { Fabricate.create(:schedule) }
  let(:comment) { Fabricate.create(:comment) }
  let!(:schedules_comment) { Fabricate.create(:schedules_comment, schedule_id: schedule.id, comment_id: comment.id) }

  context 'with comment' do
    let(:params) do
      {
        id: comment.id
      }
    end

    it 'destroys Comment' do
      response = action.call(params)

      expect(response[0]).to eq 200
      expect(CommentRepository.new.find(comment.id)).to be nil
    end
  end
end
