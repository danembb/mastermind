require './lib/game'
require './lib/message'
require './lib/sequence'
require './lib/turn'
require './lib/stopwatch'

mastermind = Game.new
sequence   = Sequence.new
stopwatch  = Stopwatch.new

puts mastermind.message.welcome
puts mastermind.message.welcome_query
mastermind.menu_flow(gets.chomp.downcase)

mastermind.game_flow(gets.chomp.downcase)

#We dont want to include "requires" on the message class file
#so is it okay if we have this one puts line here? 
puts "Congratulations you guessed the sequence #{sequence.supersecretcode} in #{turn.turn_number} turns over #{stopwatch.elapsed_minutes} minutes, #{stopwatch.elapsed_seconds} seconds."
