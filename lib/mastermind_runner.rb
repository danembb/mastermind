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

puts mastermind.message.you_won_query
mastermind.end_game_flow(gets.chomp.downcase)
# puts mastermind.message.welcome
# puts mastermind.message.welcome_query
# mastermind.menu_flow(gets.chomp.downcase)
#
# mastermind.game_flow(gets.chomp.downcase)
