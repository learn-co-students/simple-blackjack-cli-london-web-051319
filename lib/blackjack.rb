require 'pry' 

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  # binding.pry

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  gets.chomp

end

def end_game(card_total)
  # code #end_game here

  puts "Sorry, you hit #{card_total}. Thanks for playing!"


end



def initial_round
  # code #initial_round here
  var1 = deal_card
  var2 = deal_card
  card_total = var1 + var2
  display_card_total(card_total)
  card_total

end

def hit?(card_total)
  # code hit? here
  prompt_user

  case get_user_input
    when "s"
      card_total
    when "h"
      card_total += deal_card
    else
      
      invalid_command


  end
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
  prompt_user
      get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here


  welcome
  # initial_round
  running_total = initial_round
  until running_total > 21

    running_total = hit?(running_total)
    display_card_total(running_total)
  end
  end_game(running_total)
  
end
    
