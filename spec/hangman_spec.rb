require 'hangman'

describe Hangman do

  it 'lets a user guess a letter' do
    expect(subject.guess("e")).to eq "e"
  end

  it 'checks if the letter is a correct guess' do
    allow(Hangman::WORD).to receive(:generate) { "apple"}
    subject.guess("a")
    expect(subject.check).to eq true
  end

  it 'does not accept a letter which has already been guessed' do
    subject.guess("a")
    expect(subject.guess("a")).to eq "This letter has already been guessed choose another"
  end

  it 'displays the word with un-guessed letters blanked out after every correct guess' do
    allow(Hangman::WORD).to receive(:generate) { "apple"}
    subject.guess("a")
    subject.guess("l")
    expect(subject.display_word).to eq "a _ _ l _"
  end
end



# let (:user_input) { "a\n" }

# let (:expected_output) { "a _ _ _ _"}

# it 'displays with blanks filled in' do
#   srand(1)
#   set_user_input_and_check_expected_output
