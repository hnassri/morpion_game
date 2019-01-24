require 'bundler'
Bundler.require

require_relative 'show'
require_relative 'board'
require_relative 'board_case'
require_relative 'player'

class Game
  attr_accessor :one, :two, :board, :show
  def user_id
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
    @show = Show.new
  end
  def play_game
    user_id
    player = @one
    count_turn = 1
    while true || count_turn <= 9
      @show.morpion(@board.board_a1.content, @board.board_a2.content, @board.board_a3.content, @board.board_b1.content, @board.board_b2.content, @board.board_b3.content, @board.board_c1.content, @board.board_c2.content, @board.board_c3.content)
      case player
        
      when @one
        x = "x"
        
      puts "#{player.name} Choisis ta case"
      print "> "
      case_game = gets.chomp
      @board.update_case(case_game, x)
      
      if @board.winner(x) == "Vous avez gagné"
        break
      end
      player = @two
      when @two
        x = "o"
        puts "#{player.name} Choisis ta case"
        print "> "
        case_game = gets.chomp
        @board.update_case(case_game, x)
        
        if @board.winner(x) == "Vous avez gagné"
          break
        end
        player = @one

      end
      count_turn += 1
    end
    @show.morpion(@board.board_a1.content, @board.board_a2.content, @board.board_a3.content, @board.board_b1.content, @board.board_b2.content, @board.board_b3.content, @board.board_c1.content, @board.board_c2.content, @board.board_c3.content)
    puts "#{player.name} a gagné"
    puts ""
  end

end