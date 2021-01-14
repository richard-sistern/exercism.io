# Incorporating improvements from mentor feedback

class TwoFer
  TWO_FER =
    {
      English: 'One for %<name>s, one for me.',
      Spanish: 'Uno para el %<name>s, uno para mí.',
      German:  'Einer für den %<name>s, einer für mich.',
      Dutch:   'Eén voor %<name>s, één voor mij.'
    }

  def self.two_fer(name = 'you', language = :English)
    TWO_FER[language] % { name: name }
  end
end

if $PROGRAM_NAME == __FILE__
  puts TwoFer.two_fer
  puts TwoFer.two_fer 'Jorge', :Spanish
  puts TwoFer.two_fer 'Bjorn', :Dutch
  puts TwoFer.two_fer 'George'
end
