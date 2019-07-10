require "pry"

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
    return rand(1..11)
  end
# end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  # return card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  hit_or_stay = gets.chomp
  if hit_or_stay === "h"
    return "h"
  elsif hit_or_stay === "s"
    return "s"
  else
    return "exit"
  end
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
# code #initial_round here
  sum = deal_card + deal_card # this will call the prior defined function twice adding them together
  display_card_total(sum)
  return sum
end

def hit?(value)
  # code hit? here
 prompt_user
 input = get_user_input # this returns the function and executes it and sets it equal to a variable
 if input == "h" # so we know that if we have hit we need to deal a card
   value += deal_card # and we know that the new value the player has is equal to the previous value plus the new card value which is outputted by deal_card
 elsif input == "s"
   value # if we get stick, we don't add cards and the value remains the same
 # until input == "s"
 #   deal_card
 end
end

# def invalid_command
#   # code invalid_command here
# end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
    end_game(cards)

end
