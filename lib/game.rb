require 'bundler'
Bundler.require

require_relative 'show'
require_relative 'board'
require_relative 'board_case'
require_relative 'player'

class Game
  attr_accessor :one, :two, :board
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
    @board = Board.new
  end
  def player_test
    test
    player = @one
    count_turn = 1
    while true && count_turn <= 9
      if player == @one
        x = "x"
      puts "#{player.name} Choisis ta case"
      print "> "
      case_game = gets.chomp
      @board.update_case(case_game, x)
      player = @two
      else
        x = "o"
        puts "#{player.name} Choisis ta case"
        print "> "
        case_game = gets.chomp
        @board.update_case(case_game, x)

        player = @one
      end
      count_turn += 1
    end

  end

end