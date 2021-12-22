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

  # it 'does not accept a letter which has already been guessed' do
  #   subject.guess("a")
  #   expect(subject.guess("a")).to eq "This letter has already been guessed choose another"
  # end
  describe '#display_word' do
    it 'displays the word with un-guessed letters blanked out and correct guesses filled in' do
      allow(Hangman::WORD).to receive(:generate) { "apple"}
      subject.guess("a")
      subject.guess("l")
      expect(subject.display_word).to eq "a _ _ l _"
    end
    it 'displays all blanks if no guesses have been made' do
      allow(Hangman::WORD).to receive(:generate) { "apple"}
      expect(subject.display_word).to eq "_ _ _ _ _"
    end
  end

  it 'starts the game the same way each time' do
    expect(subject).to respond_to(:start_game)
  end

  it { is_expected.to respond_to :play_game }

  it 'a user wins once they have guessed all of the letters' do
    allow(Hangman::WORD).to receive(:generate) { "apple"}
    subject.guess("a")
    subject.guess("p")
    subject.guess("l")
    subject.guess("e")
    subject.display_word
    expect(subject.win?).to eq true
  end

end
  
  # describe '#play_game' do
  #   context 'displays the next level of the hangman if the guess is wrong' do
  #     let (:user_input) { "q\n" }
  #     let (:expected_output) { ["  ____ ",
  #     " |    |",
  #     " |    O",
  #     " |    ",
  #     " |     ",
  #     "========="].each { |line| puts line} }

  #     it "outputs the hangman" do
  #       allow(Hangman::WORD).to receive(:generate) { "apple"}
  #       set_user_input_and_check_expected_output
  #     end
  #   end
  # end
