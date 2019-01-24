require 'bundler'
Bundler.require

require_relative 'show'
require_relative 'board'
require_relative 'board_case'
require_relative 'player'

class Game
  # Les attr_accessor qui définissent les deux joueurs (:one et :two) + les liens le fichier board et show. 
  attr_accessor :one, :two, :board, :show
  # méthode qui initialise les deux joueurs + appelle les classes board et show. 
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

  # Méthode qui fait la partie.
  def play_game
    user_id
    # on atttribue le joueur 1 à la variable player. 
    player = @one

    count_turn = 1 # compter les tours de jeux. quand sup à 9 <-- la partie s'arrête. 
    while true || count_turn <= 9
      # on affiche le plateau de morpion défini dans show.rb
      @show.morpion(@board.board_a1.content, @board.board_a2.content, @board.board_a3.content, @board.board_b1.content, @board.board_b2.content, @board.board_b3.content, @board.board_c1.content, @board.board_c2.content, @board.board_c3.content)

      # Alterner les joueurs dans la partie. 
      case player  
        when @one # joueur 1
          # definir varable x qui correspond au jeton. 
          x = "x"
          #utiliser la variable d'instance définit dans player.rb pour afficher le nom du joueur correspondant. 
          puts "#{player.name} Choisis ta case"
          print "> "
          case_game = gets.chomp
          # on appelle la méthode update_case dans le fichier board.rb avec en paramètre le choix de la case + le type de jeton. 
          @board.update_case(case_game, x)
          # condition qui permet de vérifier si un gagnant et arrêter la partie. 
          if @board.winner(x) == "Vous avez gagné"
            break
          end
          # on affecte joueur 2 à player ce qui permet d'alterner les deux joueurs.
          player = @two
          # même chose que ci-dessus ;)
        when @two # joueur 2
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
    # appelle de la méthode morpion dans show afin d'afficher le coup gagnant en fin de partie.
    @show.morpion(@board.board_a1.content, @board.board_a2.content, @board.board_a3.content, @board.board_b1.content, @board.board_b2.content, @board.board_b3.content, @board.board_c1.content, @board.board_c2.content, @board.board_c3.content)
    puts "#{player.name} a gagné"
    puts ""
  end

end