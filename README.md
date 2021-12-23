![Generic badge](https://img.shields.io/badge/build%20status-in--progress-blue)

# Hangman

## About The Project
This project was based off of making a playable version of Hangman in Ruby using what I had learnt in the first three weeks of my Makers Apprenticeship. The basic functionality I wanted from this project was...
* A word is randomly selected (this will be a one-player game)
* A user can guess one letter at a time
* If they guess wrong - one step closer to a completed hangman
* If they guess right - all matching letters filled in 
* User wins once all letters are guessed in time

## Built With
* Ruby
* RSpec

## Usage
This is a 1-player game - once the game is loaded a random word is automatically selected from a bank of words. Below is an example of the starting screen.

The game can be loaded by running the `.start_game` method of an instance of the Hangman class. Only `hangman.rb` is required when running this in `irb` (or a similar application).
```
Welcome to Hangman!
This game's word is...
  ____ 
 |    |
 |    
 |    
 |     
=========
"_ _ _ _ _ _"
```
### Features
* The user can enter one letter at a time
* Correct guesses will lead to the correlating blanks being filled in
* Incorrect guesses will lead to the hangman ASCII art being added to and the letter will appear in a list of wrong guesses
* Once a user has guessed all of the letters a win message appears and the game closes
* If a user runs out of guesses, a lose screen appears with a "You died" message and the game closes

```
  ____ 
 |    |
 |   \O
 |    |
 |     
=========
"l u x u _ y"
e, a, s
Guess a letter
```

## Future Development
Below is a list of additions I wish to make to this project in the future:
* Expanding word bank
* Adding a two-player version (choose how many players at the start)
