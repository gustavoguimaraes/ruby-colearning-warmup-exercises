require_relative 'blackjack.rb'
def prompt(data, data2 = :hidden)
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
  hash2 = { hidden: "Dealers Cards: ja",
            revealed: "Dealers Cards: Nein"
  } 
  puts "####    B L A C K J A C K    ####"
  puts
  puts hash[data]
  puts
  puts "Your Deposit : "
  puts "Your Wager: "
  puts "Your Cards: "
  puts hash2[data2]
end
  
