require 'spec_helper'

RSpec.describe Api::Controllers::Comments::Create, type: :action do
  let(:action) { described_class.new }
  let(:schedule) { Fabricate.create(:schedule) }
  let(:task) { Fabricate.create(:task, schedule_id: schedule.id) }

  context 'with schedule' do
    let(:params) do
      {
        comment: {
          text: 'Text',
          schedule_id: schedule.id
        }
      }
    end

    it 'creates Comment' do
      response = action.call(params)

      expect(response[0]).to eq 201
      expect(CommentRepository.new.last.text).to eq 'Text'
      expect(CommentRepository.new.last.task_id).to be nil
      expect(CommentRepository.new.last.schedule_id).to eq schedule.id
    end
  end

  context 'with task' do
    let(:params) do
      {
        comment: {
          text: 'Text',
          task_id: task.id
        }
      }
    end

    it 'creates Comment' do
      response = action.call(params)

      expect(response[0]).to eq 201
      expect(CommentRepository.new.last.text).to eq 'Text'
      expect(CommentRepository.new.last.task_id).to eq task.id
      expect(CommentRepository.new.last.schedule_id).to be nil
    end
  end
end
