require 'dictionary'

describe Dictionary do 
  it 'can choose a word from a list' do
    words = ["foxglove", "length", "ruby", "apple", "luxury", "absurd", "gossip"]
    expect(words.include?(subject.generate)).to be
  end

  it 'will be a different word each time' do
    word1 = subject.generate
    word2 = subject.generate
    expect(word1).not_to match(word2)
  end
end