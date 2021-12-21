require 'dictionary'

describe Dictionary do 
  it 'can choose a random word from a list' do
    words = ["foxglove", "length", "ruby", "apple", "luxury", "absurd", "gossip"]
    expect(words.include?(subject.generate)).to be
  end
end