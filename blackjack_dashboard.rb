require_relative 'blackjack.rb'

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


# player show cards 
def player_shows_cards
  @player.hand.map { |var| var.card_value }
end
# dealer show cards (one card up one down)
def dealer_shows_cards
  @dealer.hand.map { |var| var.card_value if var.card_face == "up" }
end

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
  print player_shows_cards
  if @player.black == :busted
    puts "you busted, bastard"
  end
elsif choice == 2
  #stand
else
  puts "invalid entry"
end

#dealer acts
begin
  if @dealer.black == :unbusted && @dealer.count > @player.count
    puts "Dealer wins!"
    break
  elsif @dealer.black == :unbusted && @dealer.count < @player.count
    @dealer.add_cards "down"
  else
    puts "Player wins!"
  end
end












