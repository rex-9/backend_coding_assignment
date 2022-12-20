require 'rails_helper'

RSpec.describe Sport, type: :model do
  subject { Sport.new(name: 'soccer') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
