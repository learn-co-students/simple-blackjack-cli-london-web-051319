def welcome
  puts  "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
 card_total
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  
end

def end_game(numbers)
  puts "Sorry, you hit #{numbers}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
end

def hit? (card_total)
  # code hit? here
  prompt_user
  if get_user_input == 'h'
    card_total += deal_card
  end
    card_total
end
  



def invalid_command
  puts "Please enter a valid command"
  prompt_user
end


def runner
  # code runner here
  welcome  
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)

end
    
