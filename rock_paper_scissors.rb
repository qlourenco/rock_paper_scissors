require 'json'

HANDS = %w(rock paper scissors)

# initialize draw equal false
draw = false

# The computer picks a hand
computer_hand = HANDS.sample

# The user picks a hand
player_hand = nil
puts "What's your name ?"
print '> '
player_name = gets.chomp
loop do
  puts "Please choose your hand (#{HANDS.join(", ")})"
  print '> '
  player_hand = gets.chomp

  if HANDS.include?(player_hand)
    break
  else
    puts 'Wrong choice...'
  end
end

if computer_hand == player_hand
  draw = true
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
    win = player_name
    puts "The computer chose #{computer_hand}, great #{player_name} you win!"
  else
    win = 'Computer'
    puts "The computer chose #{computer_hand}, computer wins!"
    puts "Try again #{player_name}"
  end
end

move_hash = {
  moves: [
    {
      name: player_name,
      move: player_hand
    },
    {
      name: 'bot',
      move: computer_hand
    }
  ],
  result: {
    tie: draw,
    winner: win
  }
}

File.open('rock_paper_scissors.json', 'w') do |f|
  f.write(JSON.pretty_generate(move_hash))
end
