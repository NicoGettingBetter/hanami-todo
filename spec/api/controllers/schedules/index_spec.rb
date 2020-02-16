RSpec.describe Api::Controllers::Schedules::Index, type: :action do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end

  context 'with schedules' do
    let!(:schedule) { Fabricate.create(:schedule) }

    it 'returns schedule' do
      Hanami::Logger.new('TEST').info(schedule.title)
      response = action.call(params)
      Hanami::Logger.new('TEST').info(response)
    end
  end
end
