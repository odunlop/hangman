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

  it 'it does not accept a letter which has already been guessed' do
    subject.guess("a")
    expect(subject.guess("a")).to eq "This letter has already been guessed choose another"
  end
end