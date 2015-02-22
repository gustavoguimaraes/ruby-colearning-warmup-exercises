require_relative 'blackjack.rb'

def calculate_winner
begin
    condition = ""
    if @dealer.count <= 21 && @dealer.count > @player.count 
      condition = "Dealer wins!"
    elsif @dealer.count > 21  
      condition = "Player wins!"
      @bank.wins
    elsif @dealer.count == @player.count
      condition = "It's a Tie!"
    elsif @dealer.count < 17 && @dealer.count < @player.count
      @dealer.add_cards "down"
    end 
  end until condition == "Dealer wins!" || condition == "Player wins!" || condition == "It's a Tie!"
puts condition
puts "Your Cards: #{@player.cards_all}"
puts "Dealers Cards: #{@dealer.cards_all}"
end
# Initialize Classes
@dealer = Hand.new
@player = Hand.new
@bank = Bank.new


loop do
puts `clear`
  # place bet
  puts "####    B L A C K J A C K    ####\n"
  puts
  puts "Just place a Bet or End the Game with 666"
  puts "Your Deposit : #{@bank.deposit}"
  print "Your Wager: "
  money = gets.chomp.to_i
  @bank.wager = money

if money == 666 
  break
end
  # Initializing New Game
  # player gets cards
  2.times { @player.add_cards "up" } # exception, wenn wei 11 dann ist eine eine eins

  # deale gets cards
  @dealer.add_cards "up"
  @dealer.add_cards "down"   # exception, wenn zwei 11 dann ist eine eine eins

  begin
    puts "Your Cards: #{@player.cards_all}"
    puts "Dealers Cards: #{@dealer.cards}"

    # dealer calculate cards
    if @dealer.black == :blackjack
      puts "Dealer has Blackjack You lost the game"
    else
      # insurance when face up card = 11
    end 
    # player acts
    puts "You wanne 1. hit or 2. stand 3. surrender"
    choice = gets.chomp.to_i
    case choice
      when 1 # hit
      @player.add_cards "up" 
      if @player.black == :busted
        @bank.busted
        puts "YOU BUSTED"
        puts "Your Wager decimated to #{@bank.wager}"
        break
      end
      when 2 #stand
      calculate_winner
      when 3 #surrender
      @bank.surrender
      puts "YOU SURRENDERED"
      puts "Your Wager decimated to #{@bank.wager}"
    else
      puts "invalid entry"
    end
  end while choice == 1
end 


