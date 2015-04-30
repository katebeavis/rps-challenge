require 'spec_helper'
require 'simplecov'
SimpleCov.start
require 'game'

describe Game do
  subject { described_class.new }
  let(:player1) { double :player1, name: 'Kate' }
  let(:player2) { double :player2, name: 'Computer' }

  before do
    allow(player1).to receive(:choice).and_return 'rock'
  end

  it 'is able to add a player to the subject' do
    subject.add_player(player1)
    expect(subject.player_count).to eq(1)
  end

  it 'knows when there is a draw' do
    allow(player2).to receive(:choice).and_return 'rock'
    expect(subject.winner?(player1, player2)).to eq 'It\'s a draw!'
  end

  it 'knows when player one has won' do
    allow(player2).to receive(:choice).and_return 'scissors'
    expect(subject.winner?(player1, player2)).to eq 'Kate wins!'
  end

  it 'knows when player two has won' do
    allow(player2).to receive(:choice).and_return 'paper'
    expect(subject.winner?(player1, player2)).to eq 'Computer wins!'
  end
end
