def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
   rand(10)+1
end

def display_card_total
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
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
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  # code hit? here
  prompt_user
  option = get_user_input

   if option == 'h'
    total += deal_card
    display_card_total(total)
  else invalid_command
  end
  total
end

def invalid_command
  # code invalid_command here

  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
   total = initial_round

    until total >= 21 do
     total = hit?(total)
   end
   end_game(total)


end

runner
