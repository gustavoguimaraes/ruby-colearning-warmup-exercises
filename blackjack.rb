class Cards
  attr_accessor :face
  attr_accessor :card_value

  def initialize( data = nil )
    @face = data 
    @card_value = rand(1..11)
  end
  def show_value
    @card_value
  end
end

class Hand
  attr_accessor :hand
  def initialize( data = [] )
    @hand = data
  end
  def add_cards data
    @hand << Cards.new(data)
  end
  def count_values
    count = nil
    count = @hand.map { |var| var.show_value }
    count.inject{|sum,x| sum + x }
  end
end





