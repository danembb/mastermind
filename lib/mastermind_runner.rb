require './lib/game'
require './lib/message'

mastermind = Game.new
message = Message.new

puts message.welcome
puts message.welcome_query

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
