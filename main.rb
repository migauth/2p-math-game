# =begin
# plan for 2 p math game

# comand line interface

# nouns: player, score, question, turn, over, answer

# player containes player name and score

# question contains a randomly generated math question, contains answer - responds to the answer the user puts in

# turn determines which players turn it is, contains game loop? - contains over determines if the game is over with over == true

# =end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def question(current_player)
    first_num = rand(1..10)
    second_num = rand(1..10)
    real_answer = first_num + second_num
    puts "#{current_player.name}: What is #{first_num} + #{second_num}? It's #{real_answer}"
    print "> "
    user_answer = $stdin.gets.chomp.to_i
    
    if user_answer == real_answer
      puts "Correct!"
    else
      puts 'WRONG'
    end
  end

  def switch_players
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def start_game
    loop do
      question(@current_player)
      switch_players
    end
  end
end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)
game.start_game
