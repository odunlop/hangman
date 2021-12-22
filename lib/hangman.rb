require_relative 'dictionary'

class Hangman 
  WORD = Dictionary.new
  attr_accessor :letter
  
  def guess(letter)
    @letter = letter
  end

  def check
    WORD.generate.chars.include?(@letter)
  end
end