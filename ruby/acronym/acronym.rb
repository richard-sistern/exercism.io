class Acronym
  FIRST_CHAR_OF_EACH_WORD = Regexp.new('\b\w')

  def self.abbreviate(phrase)
    phrase
      .scan(FIRST_CHAR_OF_EACH_WORD)
      .join
      .upcase
  end
end
