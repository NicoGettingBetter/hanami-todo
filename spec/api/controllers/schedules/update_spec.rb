RSpec.describe Api::Controllers::Schedules::Update, type: :action do
  let(:action) { described_class.new }

  context 'with schedule' do
    let(:schedule) { Fabricate.create(:schedule) }
    let(:params) do
      {
        id: schedule.id,
        schedule: {
          title: 'Test Updated'
        }
      }
    end

    it 'creates Schedule' do
      response = action.call(params)

      expect(response[0]).to eq 200
      expect(ScheduleRepository.new.find(schedule.id).title).to eq 'Test Updated'
    end
  end
end
