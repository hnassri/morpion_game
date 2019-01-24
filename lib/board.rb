require 'bundler'
Bundler.require
require_relative 'board_case'
class Board
  attr_accessor :array_boardcase, :board_a1, :board_a2, :board_a3, :board_b1, :board_b2, :board_b3, :board_c1, :board_c2, :board_c3
  # on définit les cases du jeu.
  def initialize
    @board_a1 = BoardCase.new(" ", "A1")
    @board_a2 = BoardCase.new(" ", "A2")
    @board_a3 = BoardCase.new(" ", "A3")
    @board_b1 = BoardCase.new(" ", "B1")
    @board_b2 = BoardCase.new(" ", "B2")
    @board_b3 = BoardCase.new(" ", "B3")
    @board_c1 = BoardCase.new(" ", "C1")
    @board_c2 = BoardCase.new(" ", "C2")
    @board_c3 = BoardCase.new(" ", "C3")
    # on stock les instances dans un array. on utilise '@' pour pouvoir les appelers depuis d'autres classes. 
    @array_boardcase = [@board_a1, @board_a2, @board_a3, @board_b1, @board_b2, @board_b3, @board_c1, @board_c2, @board_c3]
  end

  def update_case(case_game, x)
    # boucle qui permet de changer le contenu des cases au fur et à mesure de la partie. 
    @array_boardcase.each do |n|
      # ici on associe à l'element n en fonction de sa position le jeton "x" ou "o"
        if n.position == case_game
          n.content =  x 
        end
    end
  end
  
  # compare les combinaisons gagnantes avec le plateau
  def winner(x)
    if x == @board_a1.content && x == @board_a2.content && x == @board_a3.content
      return "Vous avez gagné"
    elsif x == @board_b1.content && x == @board_b2.content && x == @board_b3.content
          return"Vous avez gagné"
    elsif x == @board_c1.content && x == @board_c2.content && x == @board_c3.content
      return "Vous avez gagné"
    elsif x == @board_a1.content && x == @board_b1.content && x == @board_c1.content
      return "Vous avez gagné"
    elsif x == @board_a2.content && x == @board_b2.content && x == @board_c2.content
      return "Vous avez gagné"
    elsif x == @board_a3.content && x == @board_b3.content && x == @board_c3.content
      return "Vous avez gagné"
    elsif x == @board_a1.content && x == @board_b2.content && x == @board_c3.content
      return "Vous avez gagné"
    elsif x == @board_a3.content && x == @board_b2.content && x == @board_c1.content
      return "Vous avez gagné"
    end
  end

end
