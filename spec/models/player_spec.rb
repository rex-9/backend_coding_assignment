require 'rails_helper'

RSpec.describe Player, type: :model do
  subject { Player.new(email: 'rex@soul.com', gender: 'male', age: 22, level: 9) }

  before { subject.save }

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'gender should be present' do
    subject.gender = nil
    expect(subject).to_not be_valid
  end

  it 'gender should be male or female' do
    subject.gender = 'malee'
    expect(subject).to_not be_valid
  end

  it 'age should be integer' do
    subject.age = 'a'
    expect(subject).to_not be_valid
  end

  it 'level should be integer' do
    subject.level = 'a'
    expect(subject).to_not be_valid
  end

  it 'level should be between 1 and 10' do
    subject.level = 11
    expect(subject).to_not be_valid
  end
end
