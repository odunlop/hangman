require_relative 'dictionary'
require_relative 'graphics'

class Hangman 
  WORD = Dictionary.new
  attr_accessor :letter, :display

  def initialize
    @guesses = []
    @word = WORD.generate
    @hangman = Graphics.new
  end

  def guess(letter)
    @guesses << letter
    @letter = letter
  end

  def display_word
    @display = []
    @word.chars.each do | letter |
      @guesses.include?(letter) ? @display << letter : @display << "_"
    end
    @display.join(" ")
  end

  def start_game
    puts "Welcome to Hangman!"
    puts "This game's word is..."
  end

  def play_game
    start_game
    mistakes = 0
    while mistakes < 6
      @hangman.draw(mistakes)
      p display_word
      puts @guesses.join(", ")
      puts "Guess a letter"
      letter = gets.chomp
      guess(letter)
      if check == true
        display_word
        if win? == true
          p display_word
          p "You won!"
          break 
        end
      elsif check == false
        mistakes += 1
      end
    end
    if mistakes == 6
      @hangman.draw(6)
      puts "You died!"
    end
  end

  def check
    @word.include?(@letter)
  end

  def win?
    !@display.include?("_")
  end
end
