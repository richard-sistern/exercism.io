# Late string interpolation

class TwoFer
  TWO_FER =
    {
      English: Proc.new {|name| "One for #{name}, one for me."},
      Spanish: Proc.new {|name| "Uno para el #{name}, uno para mí."},
      German:  Proc.new {|name| "Einer für den #{name}, einer für mich."},
      Dutch:   Proc.new {|name| "Eén voor #{name}, één voor mij."}
    }

  def self.two_fer(name = 'you', language = :English)
    TWO_FER[language].call name
  end
end

if $PROGRAM_NAME == __FILE__
  puts TwoFer.two_fer
  puts TwoFer.two_fer 'Jorge', :Spanish
  puts TwoFer.two_fer 'Bjorn', :Dutch
  puts TwoFer.two_fer 'George'
end
