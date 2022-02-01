=begin
Diagnosis
- Chosen number seems to be between 2 integers. One integer returns too small,
  but going up by 1 returns too large.
- Too big and too small are incorrect.
- Allows more than 10 guesses.

Code review
- Recursive call at the end causes the winning number to be sampled again. Each
  iteration has a different winning number.
  - The more guess wrong, the higher the recursive stack grows.
- Does not break even if the correct number is guessed.

=end
require 'pry'

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0
  # binding.pry
  puts "Winning: #{winning_number}"

  loop do
    attempts += 1
    break if attempts > max_attempts
    puts "Attempt: #{attempts}"

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

# guess_number(10, 3)

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
end

guess_number(10, 3)