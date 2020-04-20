require 'spec_helper'

RSpec.describe Task, type: :entity do
  let(:schedule) { Fabricate.create(:schedule) }

  it 'can be initialised with attributes' do
    task = described_class.new(title: 'Go to Paris', schedule: schedule)
    expect(task.title).to eq 'Go to Paris'
  end
end
