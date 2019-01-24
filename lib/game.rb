require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'show'
require 'board'
require 'board_case'
require 'player'

class Game
  attr_accessor :one, :two
def test
  puts "Pour jouer il faut être 2 joueurs"
  puts "Joueur1"
  print "> "
  player_one = gets.chomp
  @one = Player.new(player_one)
  puts "Joueur2"
  print "> "
  player_two = gets.chomp
  @two = Player.new(player_two)
  board = Board.new
end
def player_test
  test
  player = @one
  while true
    if player == @one
    puts "#{player.name} Choisis ta case"
    print "> "
    case_game = gets.chomp
      puts "yes"
    player = @two
    else
      puts "#{player.name} Choisis ta case"
      print "> "
      case_game = gets.chomp
        puts "yes"
      player = @one
    end
  end

end

end