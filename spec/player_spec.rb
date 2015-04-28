require 'spec_helper'
require 'player'

describe Player do
  subject {  described_class.new('Kate') }

  it 'lets a player have a name' do
    expect(subject.name).to eq 'Kate'
  end

  it 'lets a player make a choice' do
    expect(subject.make_choice(:rock)).to eq :rock
  end
end
