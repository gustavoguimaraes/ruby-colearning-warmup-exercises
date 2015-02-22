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

#dealer acts
begin
  puts @dealer.black
print @player.hand.map { |var| var.card_value }
print @dealer.hand.map { |var| var.card_value }
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
puts condition











