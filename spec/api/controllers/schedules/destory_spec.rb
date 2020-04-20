require 'spec_helper'

RSpec.describe Api::Controllers::Schedules::Destroy, type: :action do
  let(:action) { described_class.new }

  context 'with schedule' do
    let(:schedule) { Fabricate.create(:schedule) }
    let(:params) do
      {
        id: schedule.id,
      }
    end

    it 'creates Schedule' do
      response = action.call(params)

      expect(response[0]).to eq 200
      expect(ScheduleRepository.new.find(schedule.id)).to be nil
    end
  end
end
