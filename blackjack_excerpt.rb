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
condition = ""
if @dealer.black == :unbusted && @dealer.count > @player.count || @dealer.black == :blackjack
    condition = "Dealer wins!"
  elsif @dealer.black == :unbusted && @dealer.count < @player.count
    @dealer.add_cards "down"
  elsif @dealer.black == :busted
    condition = "Player wins!"
    puts "hello"
  end
end until condition == "Dealer wins!" || condition == "Player wins!"
puts condition

print @player.hand.map { |var| var.card_value }
print @dealer.hand.map { |var| var.card_value }










