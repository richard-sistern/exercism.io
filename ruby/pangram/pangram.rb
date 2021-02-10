class Pangram
  def self.pangram?(sentence)
    sentence
  end
end

if $PROGRAM_NAME == __FILE__
  puts Pangram.pangram?('abcdefghijklmnopqrstuvwxyz') # true
  puts Pangram.pangram?('a quick movement of the enemy will jeopardize five gunboats') # false
end
