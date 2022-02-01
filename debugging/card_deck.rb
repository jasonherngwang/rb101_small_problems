=begin
`remaining_cards.map` returns a transformed array, but this return value
is never assigned to anything. The cards array is never converted from a
mixture of integers and symbols to all symbols. Therefore,
`sum += remaining_cards.sum` invokes the Array#sum method on an array of 
mixed type elements, result in a TypeError when trying to convert a 
symbol to an Integer.
- Create a new variable `scores` to store the result of converting
  remaining_cards into all integers.

While picking one random card per suit, the Array#each method is invoked
on the array of deck keys. each is passed a block as as an argument, which
takes one parameter, suit. Inside this block, the local variable cards is
initialized to deck[suit], which is a value inside the hash deck. The
destructive methods shuffle! and pop! are invoked, and both mutate the
hash deck. Since the deck was set up so that each key points to the same
array object as the other 3 keys, the cards array get shuffled and 
popped 4 times. It shrinks from 13 to 9 elements. Therefore its sum is
lower than expected.

To fix:
When initializing the deck, create shallow copies of cards.
=end

require 'pry'

CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => CARDS.clone,
         :diamonds => CARDS.clone,
         :clubs    => CARDS.clone,
         :spades   => CARDS.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit
binding.pry

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
  
  binding.pry
end

p player_cards

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map do |card|
    score(card)
  end
  p remaining_cards

  sum += scores.sum
end

puts sum