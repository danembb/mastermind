require './lib/game'
require './lib/message'
require './lib/sequence'

mastermind = Game.new
# sequence   = Sequence.new

puts mastermind.message.welcome
puts mastermind.message.welcome_query
mastermind.menu_flow(gets.chomp)

# puts message.instructions
# puts message.too_long
# puts message.too_short
# puts message.invalid_character



# gets.chomp




  #if what we define as "the code" is too long
  #return 'this guess is too long.'
  #elsif what we define as "the code" is too short
  #return 'this guess is too short.'
  #elsif the code uses characters that are not exactly q, i, c, r, b, g, or y
  #return 'this is an invalid character.'
