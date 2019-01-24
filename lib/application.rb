require 'bundler'
Bundler.require
require 'game'
require 'player'

class Application

attr_accessor :player_one, :player_two
  def initialize
    @game = Game.new
  end

  def perform

    puts "Bienvenue dans le morpion du futur!"
    while true

    puts "Souhaitez-vous jouer une partie?"
    puts "1. Oui"
    puts "2. Non"
    params = gets.chomp.to_i
    case params
      when 1
        @game.play_game
      when 2
        puts "Ok, bye"
        break
      end
    end
  end

  
end