require 'bundler'
Bundler.require
require_relative 'board_case'
class Board
  attr_accessor :array_boardcase, :board_a1, :board_a2, :board_a3, :board_b1, :board_b2, :board_b3, :board_c1, :board_c2, :board_c3

  def initialize
    @board_a1 = BoardCase.new("A1", "A1")
    @board_a2 = BoardCase.new("A2", "A2")
    @board_a3 = BoardCase.new("A3", "A3")
    @board_b1 = BoardCase.new("B1", "B1")
    @board_b2 = BoardCase.new("B2", "B2")
    @board_b3 = BoardCase.new("B3", "B3")
    @board_c1 = BoardCase.new("C1", "C1")
    @board_c2 = BoardCase.new("C2", "C2")
    @board_c3 = BoardCase.new("C3", "C3")
    @array_boardcase = [@board_a1, @board_a2, @board_a3, @board_b1, @board_b2, @board_b3, @board_c1, @board_c2, @board_c3]
  end

  def update_case(case_game, x)
    
    @array_boardcase.each do |n|
        # while case_game != "A1" || case_game != "A2" 
        #   puts "Recommence"
        #   case_game = gets.chomp
        # end
        if n.content == case_game

          n.content =  x
        end
        # /A[1..3]/ || case_game != /B[1..3]/ || case_game != /C[1..3]/

    end
    @array_boardcase.each do |n|
      puts n.content
    end

  end
  
  
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
    elsif x == @board_a3.content && x == @board_b2.content && x == @board_a3.content
      return "Vous avez gagné"
    end
  end






end
# a = Board.new
# case_game = gets.chomp
# x = "x"
# a.update_case(case_game, x)
