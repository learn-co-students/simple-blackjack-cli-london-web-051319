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
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card_total += deal_card
  elsif (user_input != 'h' && user_input != 's')
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round_value = initial_round
  new_card_total = hit?(initial_round_value)
  until new_card_total > 21
      new_card_total = hit?(new_card_total)
  end
  display_card_total(new_card_total) 
  end_game(new_card_total)
end 
    