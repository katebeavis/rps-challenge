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
    case
    when player1.choice == player2.choice then 'It\'s a draw!'
    when player1.choice == 'scissors' && player2.choice == 'paper' then "#{player1.name} wins!"
    when player1.choice == 'paper' && player2.choice == 'rock' then "#{player1.name} wins!"
    when player1.choice == 'rock' && player2.choice == 'scissors' then "#{player1.name} wins!"
    else
      "#{player2.name} wins!"
    end
  end
end
