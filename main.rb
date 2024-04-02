=begin
plan for 2 p math game

comand line interface

nouns: player, score, question, turn, over, answer

player containes player name and score

question contains a randomly generated math question, contains answer - responds to the answer the user puts in

turn determines which players turn it is, contains game loop? - contains over determines if the game is over with over == true

=end

player = "Player 1" || "Player 2"
question = "5 + 5"

puts 'Welcome to the 2 player math game'
puts "#{player} what is #{question}?"
print ">"
choice = $stdin.gets.chomp
puts choice

# if choice == correct
#   "Good job!"
# else
#   "Wrong!"

  def player

  end

  def question

  end

  def turn

  end

  def over

  end

  def start

  end