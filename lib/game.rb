require './lib/message'
class Game

  def initialize
  end

  #def in_game_error_check
  # if gets.chomp.length >= 5
  #   return message.too_long
  # elsif gets.chomp.length <= 3
  #   return message.too_short
  # elsif gets.chomp != p || q || i || c || r || b || g || y
  #   return message.invalid_character

  def menu_flow(input)
    if input == 'p' || 'play'
      return message.play_flow
    elsif input == 'i' || 'instructions'
      return message.instructions
    elsif input == 'q' || 'quit'
      return game.end_game
    elsif input != 'q' || 'i' || 'c' || 'r' || 'b' || 'g' || 'y'
      return message.invalid_character
    end
  end
end
