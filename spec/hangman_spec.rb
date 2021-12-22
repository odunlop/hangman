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
end