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
  def cards_all
      @hand.map { |var| var.card_value }.join(" ")
  end
  def cards
      @hand.map { |var| var.card_value if var.card_face == "up" }.join(" ")
  end
end

class Bank
  attr_accessor :wager
  attr_accessor :deposit
  def initialize( data = nil, marta = 100 )
    @wager = data
    @deposit = marta
  end
#  def deposit
#    @deposit
#  end
  def surrender
     @wager / 2
  end
  def busted
    @wager = 0
  end
  def wins
    @wager = @wager * 2
  end
end

