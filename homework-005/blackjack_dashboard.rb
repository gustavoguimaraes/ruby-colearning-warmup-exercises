require_relative 'blackjack.rb'

def calculate_winner
begin
    condition = ""
    if @dealer.count <= 21 && @dealer.count > @player.count 
      condition = "Dealer wins!"
      data = :menue5
      @bank.loses
    elsif @dealer.count > 21 || @player.count == 21 
      condition = "Player wins!"
      data = :menue6
      @bank.wins
    elsif @dealer.count == @player.count
      condition = "It's a Tie!"
      data = :menue7
    elsif @dealer.count < 17 && @dealer.count < @player.count
      @dealer.add_cards "down"
    end 
  end until condition == "Dealer wins!" || condition == "Player wins!" || condition == "It's a Tie!"
  data
end

def prompt data
  puts `clear`
  hash = { menue: "Just place a Bet or End the Game with end",
           menue2: "Press 1. to Hit  2. to Stand 3. to Surrender",
           menue3: "YOU BUSTED\n Type again for another Turn",
           menue4: "YOU SURRENDERED and Lost Half Your Wager\n Type again for another Turn",
           menue5: "DEALER WINS\n Type again for another Turn",
           menue6: "YOU WIN\n Type again for another Turn",
           menue7: "IT'S A TIE\n Type again for another Turn",
           menue8: "INVALID ENTRY\nPress 1. to Hit  2. to Stand 3. to Surrender"
  } 
  puts "####    B L A C K J A C K    ####"
  puts
  puts hash[data]
  puts
  puts "Your Deposit : #{@bank.deposit}"
  puts "Your Wager: #{@bank.wager}"
  puts "Your Cards: #{@player.cards_all}"
  puts "Dealers Cards: #{@dealer.cards}"
end
  
def reset
  @dealer.hand = []
  @player.hand = []
  @bank.wager = nil
end


# Initialize Classes
@dealer = Hand.new
@player = Hand.new
@bank = Bank.new

loop do
  #empty what is in the pipe
  reset
  prompt :menue
  puts
  print "\nPlease Enter Here ----->  "
  money = gets.chomp
  @bank.wager = money.to_i
  @bank.deposit = @bank.deposit - money.to_i

if money == "end" 
  break
end
  # Initializing New Game
  # player gets cards
  2.times { @player.add_cards "up" } # exception, wenn wei 11 dann ist eine eine eins

  # deale gets cards
  @dealer.add_cards "up"
  @dealer.add_cards "down"   # exception, wenn zwei 11 dann ist eine eine eins

    data = :menue2
  begin
    prompt data 

    # dealer calculate cards
    if @dealer.black == :blackjack
      puts "Dealer has Blackjack You lost the game"
    else
      # insurance when face up card = 11
    end 
    # player acts
    print "\nPlease Enter Here ----->  "
    choice = gets.chomp
    case choice.to_i
      when 1 # hit
      @player.add_cards "up" 
      if @player.black == :busted
        @bank.busted
        data = :menue3
      end
      when 2 #stand
      data = calculate_winner
      when 3 #surrender
      @bank.surrender
      @bank.deposit = @bank.deposit - @bank.surrender
      data = :menue4
    else
      data = :menue8
    end
  end until choice == "again"
end 


