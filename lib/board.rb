require 'bundler'
Bundler.require
require_relative 'board_case'
class Board
  attr_accessor :array_position

  def initialize
    board_a1 = BoardCase.new("", "A1")
    board_a2 = BoardCase.new("", "A2")
    board_a3 = BoardCase.new("", "A3")
    board_b1 = BoardCase.new("", "B1")
    board_b2 = BoardCase.new("", "B2")
    board_b3 = BoardCase.new("", "B3")
    board_c1 = BoardCase.new("", "C1")
    board_c2 = BoardCase.new("", "C2")
    board_c3 = BoardCase.new("", "C3")
    @array_position = {board_a1.content => board_a1.position,board_a2.content =>  board_a2.position,board_a3.content =>  board_a3.position,board_b1.content =>  board_b1.position,board_b2.content =>  board_b2.position,board_b3.content =>  board_b3.position,board_c1.content =>  board_c1.position, board_c2.content => board_c2.position,board_c3.content =>  board_c3.position}
  end

  def update_case(case_game, x)
    @array_position.each do |n, v|
      if v == case_game
        n = x
        @array_position.delete(n)
        puts @array_position
      end
    end
  end







end
a = Board.new
case_game = gets.chomp
x = "x"
p a.update_case(case_game, x)