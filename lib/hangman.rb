require_relative 'dictionary'

class Hangman 
  WORD = Dictionary.new
  attr_accessor :letter

  def initialize
    @guesses = []
  end

  def guess(letter)
    if @guesses.include?(letter)
      return "This letter has already been guessed choose another"
    else
      @guesses << letter
      @letter = letter
    end
  end

  def check
    WORD.generate.include?(@letter)
  end
end