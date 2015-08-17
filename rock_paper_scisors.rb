# 1. player picks either rock paper or scisors
# 2. compare: paper>rock, rock>scisors, scisors>paper, or tie if same.
# 3. play again?

CHOICES = {'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scisors'}
puts "Let's play Rock Paper Scisors!"

loop do
  #player makes a pick
  begin
    puts "Choose One: (R) (P) (S)"
    player_choice = gets.chomp.upcase
  end until CHOICES.keys.include?(player_choice)
    
  # computer makes a pic
  computer_choice = CHOICES.keys.sample

  # players and comp. tie
  if player_choice == computer_choice
    puts "Tie!"

  # player wins
  elsif (player_choice == 'P' && computer_choice == 'R') || (player_choice == 'R' && computer_choice == 
    'S') || (player_choice == 'S' && computer_choice == 'P')
    puts "--Computer chose #{computer_choice} so you won!--"

  # computer wins
  else 
    puts "--You chose #{player_choice} and computer chose #{computer_choice} so computer won!--"
  end
      

end


