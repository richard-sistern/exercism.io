class Pangram
  ALPHABET = ('a'..'z')

  def self.pangram?(sentence)
    sentence.downcase!
    ALPHABET.all? { |letter| sentence.include? letter }

    # all?(*args)
    # Passes each element of the collection to the given block.
    # The method returns true if the block never returns false or nil.
    # https://apidock.com/ruby/Enumerable/all%3F
  end
end

if $PROGRAM_NAME == __FILE__
  puts Pangram.pangram?('abcdefghijklmnopqrstuvwxyZ') # true
  puts Pangram.pangram?('a quick movement of the enemy will jeopardize five gunboats') # false
end
