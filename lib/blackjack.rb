def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif (input != "s" && input != "h")
    invalid_command
    hit?
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  new_total = initial_round
  until new_total > 21 do
    new_total = hit?(new_total)
    display_card_total(new_total)
  end
  end_game(new_total)
end
