require 'spec_helper'

RSpec.describe Api::Controllers::Schedules::Create, type: :action do
  let(:action) { described_class.new }

  context 'with params' do
    let(:params) do
      {
        schedule: {
          title: 'Test'
        }
      }
    end

    it 'creates Schedule' do
      response = action.call(params)

      expect(response[0]).to eq 201
      expect(ScheduleRepository.new.last.title).to eq 'Test'
    end
  end
end
