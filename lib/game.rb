class Game
  attr_accessor :players

  def initialize
    @players ||= []
  end

  def add_player(player)
    @players << player
    p players
  end

  def player_count
    players.count
  end

  def winner?(player1, player2)
    if player1.choice == player2.choice
      'It\'s a draw!'
    elsif player1.choice == 'scissors' && player2.choice == 'paper'
      "#{player1.name} wins!"
    elsif player1.choice == 'paper' && player2.choice == 'rock'
      "#{player1.name} wins!"
    elsif player1.choice == 'rock' && player2.choice == 'scissors'
      "#{player1.name} wins!"
    else
      "#{player2.name} wins!"
    end
  end
end
