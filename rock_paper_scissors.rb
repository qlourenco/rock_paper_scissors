HANDS = %w(rock paper scissors)

# The computer picks a hand
computer_hand = HANDS.sample

# The user picks a hand
player_hand = nil
loop do
  puts "Please choose your hand (#{HANDS.join(", ")})"
  print "> "
  player_hand = gets.chomp

  if HANDS.include?(player_hand)
    break
  else
    puts "Wrong choice..."
  end
end

if computer_hand == player_hand
  puts "You both chose #{computer_hand}, draw."
else
  if computer_hand == 'rock'
    player_wins = player_hand == 'paper'
  elsif computer_hand == 'paper'
    player_wins = player_hand == 'scissors'
  elsif computer_hand == 'scissors'
    player_wins = player_hand == 'rock'
  end

  if player_wins
    puts "The computer chose #{computer_hand}, you win!"
  else
    puts "The computer chose #{computer_hand}, computer wins!"
  end
end
