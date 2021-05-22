require './lib/game'
require './lib/message'
require './lib/sequence'
require './lib/turn'

mastermind = Game.new
# sequence   = Sequence.new

puts mastermind.message.welcome
puts mastermind.message.welcome_query
mastermind.menu_flow(gets.chomp.downcase)

# mastermind.game_flow(gets.chomp.downcase)



  #if what we define as "the code" is too long
  #return 'this guess is too long.'
  #elsif what we define as "the code" is too short
  #return 'this guess is too short.'
  #elsif the code uses characters that are not exactly q, i, c, r, b, g, or y
  #return 'this is an invalid character.'
