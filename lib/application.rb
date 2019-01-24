require 'bundler'
Bundler.require
require_relative 'game'
require_relative 'player'

class Application

attr_accessor :player_one, :player_two
  def initialize
    @game = Game.new
  end

  def perform

    puts "Bienvenue dans le morpion du futur!"
    # Début de partie 
    while true
      puts "Souhaitez-vous jouer une partie?"
      puts "1. Oui"
      puts "2. Non"
      params = gets.chomp.to_i
    case params
      when 1
        # on appelle la méthode play_game de la classe Game qui lance une partie. Se reporter au fichier game.rb.
        @game.play_game
      when 2
        puts "Ok, bye"
        break
      end
    end
  end

  
end