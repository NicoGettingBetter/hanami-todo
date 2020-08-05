require 'spec_helper'

RSpec.describe Comment, type: :entity do
  it 'can be initialised with attributes' do
    comment = described_class.new(text: 'Well done')
    expect(comment.text).to eq 'Well done'
  end
end
