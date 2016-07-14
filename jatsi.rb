def roll_die
  [1,2,3,4,5,6].sample
end

def roll_hand(n)
  [roll_die, roll_die, roll_die, roll_die, roll_die]
end

def score_upper num, hand
  hand.count(num)*num
end

def dice_map
  { 1 => '⚀',
    2 => '⚁',
    3 => '⚂',
    4 => '⚃',
    5 => '⚄',
    6 => '⚅'}
end

def print_hand hand
  hand.map do |d|
    dice_map[d]
  end.join
end

score = 0

(1..6).each do |n|
  hand = roll_hand(6)
  hand_score = score_upper(n, hand)
  score += hand_score
  puts "#{n}: #{print_hand(hand)} -> #{hand_score}"
end

puts "subtotal: #{score}"
