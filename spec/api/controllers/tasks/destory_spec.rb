require 'spec_helper'

RSpec.describe Api::Controllers::Tasks::Destroy, type: :action do
  let(:action) { described_class.new }

  context 'with task' do
    let(:task) { Fabricate.create(:task) }
    let(:params) do
      {
        id: task.id,
      }
    end

    it 'creates Task' do
      response = action.call(params)

      expect(response[0]).to eq 200
      expect(TaskRepository.new.find(task.id)).to be nil
    end
  end
end
