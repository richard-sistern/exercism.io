class Acronym
  FIRST_CHAR_OF_EACH_WORD = Regexp.new('\b\w')

  def self.abbreviate(phrase)
    phrase
      .scan(FIRST_CHAR_OF_EACH_WORD)
      .join
      .upcase
  end
end

if $PROGRAM_NAME == __FILE__
  puts Acronym.abbreviate('Portable Network Graphics')
  puts Acronym.abbreviate('Something - I made up from thin air')
end
