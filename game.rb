require_relative 'player'

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
    puts "#{current_player.name}: What is #{first_num} + #{second_num}?"
    print "> "
    user_answer = $stdin.gets.chomp.to_i
    
    if user_answer == real_answer
      current_player.score += 1
      puts "Correct!"
      puts "Score: Player1 #{@player1.score}/3 | Player2 #{@player2.score}/3 "
    else
      puts 'WRONG'
      puts "Score: Player1 #{@player1.score}/3 | Player2 #{@player2.score}/3 "
    end
  end

  def switch_players
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def start_game
    loop do
      question(@current_player)
      if @player1.score == 3 || @player2.score == 3
        puts "#{@current_player.name} wins!"
        exit(0)
      else
      switch_players
      end
    end
  end
end