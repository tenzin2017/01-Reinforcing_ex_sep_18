ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

hash = {}

 ballots.each do |vote|
   if hash.keys.include?(vote[1])
      hash[vote[1]] += 3
   else
      hash[vote[1]] = 3
   end

   #one line if/else statement, easy and clean
  # hash.has_key?(vote[1]) ? hash[vote[1]] += 3 : hash[vote[1]] = 3
  hash.has_key?(vote[2]) ? hash[vote[2]] += 2 : hash[vote[2]] = 2
  hash.has_key?(vote[3]) ? hash[vote[3]] += 1 : hash[vote[3]] = 1
 end

 puts hash

def winner(hash)
  hash.max_by { |name, votes| votes }.first
end

puts "#{winner(hash)} is the winner !"
