def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
  return number
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  answer = gets.chomp
  return answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
  card_total += deal_card
  return card_total
elsif input == "s"
  return card_total
else
invalid_command
prompt_user
input = get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  input = get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
initial_round
get_user_input

end
