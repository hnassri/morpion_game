require 'bundler'
Bundler.require


class BoardCase
  # ca permet d'avoir les parametres pour les cases. 
  attr_accessor :content, :position
  def initialize(content, position)
    @content = content
    @position = position
  end

end