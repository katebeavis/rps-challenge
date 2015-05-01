require 'spec_helper'
require 'simplecov'
SimpleCov.start
require 'game'

describe Game do
  subject { described_class.new }
  let(:player1) { double :player1, name: 'Kate' }
  let(:player2) { double :player2, name: 'Player Two' }

  context 'adding players to the game' do
    it 'is able to add a player to the subject' do
      subject.add_player(player1)
      expect(subject.player_count).to eq(1)
    end
  end

  context 'player1 chooses rock and wins' do
    before do
      allow(player1).to receive(:choice).and_return 'rock'
    end

    it 'knows when there is a draw' do
      allow(player2).to receive(:choice).and_return 'rock'
      expect(subject.winner?(player1, player2)).to eq 'It\'s a draw!'
    end

    it 'knows when player one has won' do
      allow(player2).to receive(:choice).and_return 'scissors'
      expect(subject.winner?(player1, player2)).to eq 'Kate wins!'
    end
  end

  context 'player1 choose scissors and wins' do
    before do
      allow(player1).to receive(:choice).and_return 'scissors'
    end

    it 'knows when player one has won' do
      allow(player2).to receive(:choice).and_return 'paper'
      expect(subject.winner?(player1, player2)).to eq 'Kate wins!'
    end
  end

  context 'player1 chooses paper and wins' do
    before do
      allow(player1).to receive(:choice).and_return 'paper'
    end

    it 'knows when player one has won' do
      allow(player2).to receive(:choice).and_return 'rock'
      expect(subject.winner?(player1, player2)).to eq 'Kate wins!'
    end
  end

  context 'player2 wins' do
    before do
      allow(player1).to receive(:choice).and_return 'rock'
    end

    it 'knows when player two has won' do
      allow(player2).to receive(:choice).and_return 'paper'
      expect(subject.winner?(player1, player2)).to eq 'Player Two wins!'
    end
  end
end
