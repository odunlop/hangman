class Dictionary
  def initialize
    @words = ["foxglove", "length", "ruby", "apple", "luxury", "absurd", "gossip", "blank"].freeze
  end

  def generate
    @words[rand(@words.length)]
  end
end