class Game
  attr_accessor :players

  def initialize
    @players ||= []
  end

  def add_player(player)
    @players << player
  end

  def player_count
    players.count
  end

  def winner?(player1, player2)
    if player1.choice == player2.choice
      'It\'s a draw!'
    elsif player1.choice == 'scissors' && player2.choice == 'paper'
      'Player One has won!'
    elsif player1.choice == 'paper' && player2.choice == 'rock'
      'Player One has won!'
    elsif player1.choice == 'rock' && player2.choice == 'scissors'
      'Player One has won!'
    else
      'Player Two has won!'
    end
  end
end
