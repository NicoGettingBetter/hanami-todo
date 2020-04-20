require 'spec_helper'

RSpec.describe Api::Controllers::Tasks::Update, type: :action do
  let(:action) { described_class.new }

  context 'with params' do
    let(:task) { Fabricate.create(:task) }
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

    it 'creates Tasks' do
      response = action.call(params)

      expect(response[0]).to eq 200
      expect(TasksRepository.new.last.title).to eq 'Test'
      expect(TasksRepository.new.last.description).to eq 'Desc'
      expect(TasksRepository.new.last.completed).to be true
      expect(TasksRepository.new.last.estimation).to eq 1.5
    end
  end
end
