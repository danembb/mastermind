class Game
  attr_reader :welcome

  def initialize
    @welcome = welcome
  end

  #def in_game_error_check
  # if gets.chomp.length >= 5
  #   return message.too_long
  # elsif gets.chomp.length <= 3
  #   return message.too_short
  # elsif gets.chomp != p || q || i || c || r || b || g || y
  #   return message.invalid_character

  #def menu_flow
  # if gets.chomp == p || play
  #   game.initate
  # elsif gets.chomp == i || instructions
  #   return message.instructions
  # elsif gets.chomp == q || quit
  #   game.end_game
  # elsif gets.chomp != q || i || c || r || b || g || y
  #   return message.invalid_character
end
