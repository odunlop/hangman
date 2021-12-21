class Dictionary
  def initialize
    @words = ["foxglove", "length", "ruby", "apple", "luxury", "absurd", "gossip"].freeze
  end

  def generate
    @words[rand]
  end
end