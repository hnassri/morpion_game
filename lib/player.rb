require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'application'

class Player
  attr_accessor :name
  def initialize(name)
    @name = name
    puts "Bonjour #{name}"
  
  
  end


end