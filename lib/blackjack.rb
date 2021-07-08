def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand_num = rand(1..11)
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
  cards_sum = deal_card + deal_card
  display_card_total(cards_sum)
  return cards_sum
end

def hit?(card_total)
  prompt_user
  usr_input = get_user_input
  until usr_input == 'h' || usr_input == 's'
    invalid_command
    prompt_user
    usr_input = get_user_input
  end
  if usr_input == 'h'
    return card_total += deal_card
  elsif usr_input == 's'
    return card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end
