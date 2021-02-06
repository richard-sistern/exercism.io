class Acronym
  def self.abbreviate(phrase)
    new(phrase).upcase
  end

  private

  def initialize(phrase)
    first_char_of_each_word = Regexp.new('\b\w')
    @acronym = phrase.scan(first_char_of_each_word).join
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
