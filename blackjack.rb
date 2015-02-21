class Cards
  attr_accessor :face
  attr_accessor :card_value

  def initialize( data = nil )
    @face = data 
    @card_value = rand(1..11)
  end
  def card_value
    @card_value
  end
  def card_face
    @face
  end
end

class Hand
  attr_accessor :hand
  attr_accessor :count
  def initialize( data = [] )
    @hand = data
    @count = nil
  end
  def add_cards data
    @hand << Cards.new(data)
    count_values
  end
  def count_values
    var = []
    var = @hand.map { |var| var.card_value }
    @count = var.inject{|sum,x| sum + x }
  end
  def black
    if @count == 21
      @bj_state = :blackjack
    elsif @count > 21
      @bj_state = :busted
    elsif @count < 21
      @bj_state = :unbusted
    end
  end
end

class Bank
  attr_accessor :wager
  def initialize( data = nil )
    @wager = data
  end
  def surrender
    @wager = @wager / 2
  end
end

