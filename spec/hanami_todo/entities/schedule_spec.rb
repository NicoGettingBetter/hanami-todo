require 'spec_helper'

RSpec.describe Schedule, type: :entity do
  it 'can be initialised with attributes' do
    schedule = described_class.new(title: 'Trip to Paris')
    expect(schedule.title).must_equal 'Trip to Paris'
  end
end
