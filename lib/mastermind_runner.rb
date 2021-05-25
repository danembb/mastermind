require './lib/game'
require './lib/message'
require './lib/sequence'
require './lib/turn'
require './lib/stopwatch'

mastermind = Game.new
message    = Message.new
sequence   = Sequence.new
stopwatch  = Stopwatch.new
turn       = Turn.new(['r','r', 'r', 'r'])

puts mastermind.message.welcome
puts mastermind.message.welcome_query
mastermind.menu_flow(gets.chomp.downcase)

mastermind.game_flow(gets.chomp.downcase)
# puts "Congratulations you guessed the sequence #{mastermind.sequence.display_cheat} in #{mastermind.turn.turn_number} turns over #{mastermind.stopwatch.elapsed_minutes} minutes, #{mastermind.stopwatch.elapsed_seconds} seconds."
# puts mastermind.message.you_won_query
# mastermind.end_game_flow(gets.chomp.downcase)
