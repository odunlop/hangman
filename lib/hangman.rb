require_relative 'dictionary'

class Hangman 
  WORD = Dictionary.new
  attr_accessor :letter

  def initialize
    @guesses = []
    @word = WORD.generate
  end

  def guess(letter)
    if @guesses.include?(letter)
      return "This letter has already been guessed choose another"
    else
      @guesses << letter
      @letter = letter
    end
  end

  def display_word
    display = []
    @word.chars.each do | letter |
      @guesses.include?(letter) ? display << letter : display << "_"
    end
    display.join(" ")
  end

  def check
    @word.include?(@letter)
  end
end