require "paper_rock_scissors/version"
require "paper_rock_scissors/game"

module PaperRockScissors
  puts "Welcome to Paper, Rock, Scissors!"
  print "1 or 2 Players? >"
  num_players = gets.chomp.to_i
  game = Game.new(num_players)
  game.play
end
