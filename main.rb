# =begin
# plan for 2 p math game

# comand line interface

# nouns: player, score, question, turn, over, answer

# player containes player name and score

# question contains a randomly generated math question, contains answer - responds to the answer the user puts in

# turn determines which players turn it is, contains game loop? - contains over determines if the game is over with over == true

# =end

require_relative 'player'
require_relative 'game'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)
game.start_game
