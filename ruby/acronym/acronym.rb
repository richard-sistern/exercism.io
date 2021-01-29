class Acronym
  attr_reader :acronym

  def self.abbreviate(phrase)
    new(phrase).acronym
  end

  private

  def initialize(phrase)
    @acronym = phrase.scan(/\b\w/).join.upcase
  end
end

if $PROGRAM_NAME == __FILE__
  puts Acronym.abbreviate('Portable Network Graphics')
end

# TODO: Reorder code
# TODO: Clean comments

# https://ivoanjo.me/blog/2017/09/20/why-i-always-use-attr_reader-to-access-instance-variables/
# https://stackoverflow.com/questions/46863457/how-to-select-first-letter-of-each-word-of-a-string-using-regex
# https://www.rubyguides.com/2015/06/ruby-regex/

=begin
irb(main):001:0> "Portable Network Graphics".scan(/\b\w/)
=> ["P", "N", "G"]
irb(main):002:0> "Portable Network Graphics".scan(/\b\w/).join
=> "PNG"
=end
