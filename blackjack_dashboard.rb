require_relative 'blackjack.rb'

def player_shows_cards
  @player.hand.map { |var| var.card_value }
end
# dealer show cards (one card up one down)
def dealer_shows_cards
  @dealer.hand.map { |var| var.card_value if var.card_face == "up" }
end
def dealer_reveal_cards
  @dealer.hand.map { |var| var.card_value }
end


# place bet

# player karten austeilen
@player = Hand.new
2.times do @player.add_cards "up"
# exception, wenn zwei 11 dann ist eine eine eins
end

# dealer  karten austeilen
@dealer = Hand.new
@dealer.add_cards "up"
@dealer.add_cards "down"
# exception, wenn zwei 11 dann ist eine eine eins


begin
print player_shows_cards
print dealer_shows_cards

# dealer calculate cards
if @dealer.black == :blackjack
  puts "Dealer has Blackjack you lost the game"
else
  # insurance when face up card = 11
end 
# player acts
puts "you wanne 1. hit or 2. stand"
choice = gets.chomp.to_i
if choice == 1
  @player.add_cards "up" # hit
  if @player.black == :busted
    puts "you busted, bastard"
  end
elsif choice == 2
  #stand
  begin
    condition = ""
    if @dealer.count <= 21 && @dealer.count > @player.count 
      condition = "Dealer wins!"
    elsif @dealer.count < 21 && @dealer.count < @player.count
      @dealer.add_cards "down"
    elsif @dealer.count > 21  
      condition = "Player wins!"
    elsif @dealer.count == @player.count
      condition = "It's a Tie!"
    end 
  end until condition == "Dealer wins!" || condition == "Player wins!" || condition == "It's a Tie!"
else
  puts "invalid entry"
end
end while choice == 1
print dealer_reveal_cards
puts condition


