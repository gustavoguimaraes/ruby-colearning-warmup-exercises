require_relative 'blackjack.rb'

def player_shows_cards
  "Players Cards: #{@player.hand.map { |var| var.card_value }.join(" ")}"
end
# dealer show cards (one card up one down)
def dealer_shows_cards
  "Dealers Cards: #{@dealer.hand.map { |var| var.card_value if var.card_face == "up" }.join(" ")}"
end
def dealer_reveal_cards
  @dealer.hand.map { |var| var.card_value }
end
def calculate_winner
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
puts condition
print dealer_reveal_cards
print player_shows_cards 
end
# Initialize Classes
@dealer = Hand.new
@player = Hand.new
@bank = Bank.new


begin
  # place bet
  puts "YOU WANNE PLAY BLACKJACK ???\n"
  puts "just place a bet (1-100$) or End the Game with 666"
  print "your wager: "
  money = gets.chomp.to_i
  @bank.wager = money

break if money == 666 # klappt nicht
  # player gets cards
  2.times { @player.add_cards "up" } # exception, wenn wei 11 dann ist eine eine eins

  # deale gets cards
  @dealer.add_cards "up"
  @dealer.add_cards "down"   # exception, wenn zwei 11 dann ist eine eine eins

  begin
    puts player_shows_cards
    puts dealer_shows_cards

    # dealer calculate cards
    if @dealer.black == :blackjack
      puts "Dealer has Blackjack you lost the game"
    else
      # insurance when face up card = 11
    end 
    # player acts
    puts "you wanne 1. hit or 2. stand 3. surrender"
    choice = gets.chomp.to_i
    if choice == 1 # hit
      @player.add_cards "up" 
      if @player.black == :busted
        puts "you busted, bastard"
      end
    elsif choice == 2 #stand
      calculate_winner
    elsif choice == 3
      @bank.surrender
      puts "You surendered"
      puts "Your wager decimated to #{@bank.wager}"
    else
      puts "invalid entry"
    end
  end while choice == 1
end 


