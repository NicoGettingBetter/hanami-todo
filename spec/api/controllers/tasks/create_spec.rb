require 'spec_helper'

RSpec.describe Api::Controllers::Tasks::Create, type: :action do
  let(:action) { described_class.new }

  context 'with params' do
    let(:params) do
      {
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

      expect(response[0]).to eq 201
      expect(TaskRepository.new.last.title).to eq 'Test'
      expect(TaskRepository.new.last.description).to eq 'Desc'
      expect(TaskRepository.new.last.completed).to be true
      expect(TaskRepository.new.last.estimation).to eq 1.5
    end
  end
end
