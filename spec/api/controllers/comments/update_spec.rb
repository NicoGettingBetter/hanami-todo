require 'spec_helper'

RSpec.describe Api::Controllers::Comments::Update, type: :action do
  let(:action) { described_class.new }
  let(:schedule) { Fabricate.create(:schedule) }
  let(:comment) { Fabricate.create(:comment) }
  let!(:schedules_comment) { Fabricate.create(:schedules_comment, schedule_id: schedule.id, comment_id: comment.id) }


  context 'with params' do
    let(:params) do
      {
        id: comment.id,
        comment: {
          text: 'New text',
        }
      }
    end

    it 'updates Comments' do
      response = action.call(params)

      expect(response[0]).to eq 200
      expect(CommentRepository.new.last.text).to eq 'New text'
    end
  end
end
