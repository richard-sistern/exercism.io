class Acronym
  FIRST_CHAR_OF_EACH_WORD = Regexp.new('\b\w')

  def self.abbreviate(phrase)
    new(phrase).upcase
  end

  private

  def initialize(phrase)
    @acronym = phrase.scan(FIRST_CHAR_OF_EACH_WORD).join
  end

  public

  def upcase
    @acronym.upcase
  end
end

if $PROGRAM_NAME == __FILE__
  puts Acronym.abbreviate('Portable Network Graphics')
  puts Acronym.abbreviate('Something - I made up from thin air')
end
