class Game

  attr_accessor :players

  def initialize
    @players ||= []
    # @rules = {rock: :paper, paper: :scissors, scissors: :rock}
    # @result = @rules.keys
  end

  def add_player(player)
    @players << player
  end

  def player_count
    players.count
  end

#   def winner?(player1, player2)
# #   player1.choice == player2.choice ? "It's a draw!" : player1.choice == @rules[player2.choice] ? "Player One has won!" : "Player Two has won!"
# # end

  def winner?(player1, player2)
    if player1.choice == player2.choice
      "It's a draw!"
    elsif player1.choice == "scissors" && player2.choice == "paper"
      "Player One has won!"
    elsif player1.choice == "paper" && player2.choice == "rock"
      "Player One has won!"
    elsif player1.choice == "rock" && player2.choice == "scissors"
      "Player One has won!"

    elsif player2.choice == "scissors" && player1.choice == "paper"
      "Player Two has won!"
    elsif player2.choice == "paper" && player1.choice == "rock"
      "Player Two has won!"
    else player2.choice == "rock" && player1.choice == "scissors"
      "Player Two has won!"
    end
  end

  # def winner?(player1, player2)
  #   case
  #   when player1.choice == player2.choice
  #     return "It's a draw!"
  #   when player1.choice == "scissors" && player2.choice == "paper"
  #     return "Player One has won!"
  #   when player1.choice == "paper" && player2.choice == "rock"
  #     return "Player One has won!"
  #   when player1.choice == "rock" && player2.choice == "scissors"
  #     return "Player One has won!"

  #   when player2.choice == "scissors" && player1.choice == "paper"
  #     return "Player Two has won!"
  #   when player2.choice == "paper" && player1.choice == "rock"
  #     return "Player Two has won!"
  #   when player2.choice == "rock" && player1.choice == "scissors"
  #     return "Player Two has won!"
  #   end
  # end

end