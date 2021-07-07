def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card 
 first_card = rand(1..11)
 return first_card
end

def display_card_total(card_total)
    # code #display_card_total here
    puts("Your cards add up to #{card_total}")
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  return input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  
  card_total = card_one + card_two
  display_card_total(card_total)
  
  return card_total
  
end

def hit? (card_total)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    card_total += deal_card 
  elsif user_input == "s"
    card_total 
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21 
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
