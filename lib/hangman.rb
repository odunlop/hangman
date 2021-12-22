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
    @hangman.start
    puts "This game's word is..."
    p display_word
  end

  def play_game
    start_game
    mistakes = 0
    while mistakes < 6
      puts "Guess a letter"
      letter = gets.chomp
      guess(letter)
      if check == true
        p display_word
        if win? == true
          return p "You won!"
        end
      elsif check == false
        mistakes += 1
        @hangman.draw(mistakes)
      end
    end
    if mistakes == 6
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


game = Hangman.new
game.play_game