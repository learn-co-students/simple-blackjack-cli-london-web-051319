require_relative "blackjack.rb"

def runner
welcome
total = initial_round
until total > 21
  total = hit?(total)
  display_card(total)
end
end_game(total)
end
