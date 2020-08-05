require 'spec_helper'

RSpec.describe Api::Controllers::Tasks::Update, type: :action do
  let(:action) { described_class.new }
  let(:schedule) { Fabricate.create(:schedule) }
  let(:task) { Fabricate.create(:task, schedule_id: schedule.id) }

  context 'with params' do
    let(:params) do
      {
        id: task.id,
        task: {
          title: 'Test',
          description: 'Desc',
          completed: true,
          estimation: 1.5
        }
      }
    end

    it 'updates Tasks' do
      response = action.call(params)

      expect(response[0]).to eq 200
      expect(TaskRepository.new.last.title).to eq 'Test'
      expect(TaskRepository.new.last.description).to eq 'Desc'
      expect(TaskRepository.new.last.completed).to be true
      expect(TaskRepository.new.last.estimation).to eq 1.5
    end
  end
end
