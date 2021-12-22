require 'graphics'

describe Graphics do
  describe '#draw'
  it 'displays a hangman in ascii art' do 
    expect(subject).to respond_to(:draw).with(1).argument
  end
  it 'displays the progress of the hangman' do
    expect(subject.draw(1)). to eq [
    "  ____ ",
    " |    |",
    " |    O",
    " |    ",
    " |     ",
   "========="].each { |line| puts line}
  end
end