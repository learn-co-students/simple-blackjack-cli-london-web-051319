def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
  
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  method = gets.chomp 
end

def end_game(number)
  if number > 21
   puts "Sorry, you hit #{number}. Thanks for playing!"
 end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum 
end

def hit?(current_total)
  prompt_user
  
  input = get_user_input
  
  if input == "s"
    return current_total
    
    elsif input == "h"
    return current_total += deal_card
  end
  
    
end

def invalid_command
input = get_user_input

if input != "h" || "s"
  puts "Please enter a valid command"
  return current_total
end 

prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  hand = initial_round 
  until hand > 21 do 
    hand = hit?(hand)
    display_card_total(hand)
  end
end_game(hand)
end
    
