require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'application'

class Player
  # permet de mettre le nom en paramètre de Player et utiliser la variable d'instance 'name'
  attr_accessor :name
  def initialize(name)
    @name = name
    puts "Bonjour #{name}"
  end
end