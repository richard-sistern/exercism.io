class TwoFer
  def self.two_fer(name = 'you')
    'One for %s, one for me.' % name
  end

  # With an annotation reference
  def self.two_fer_note(name = 'you')
    'One for %<name>s, one for me.' % { name: name }
  end

  # Using full sptringf syntax
  def self.two_fer_sprintf(name = 'you')
    sprintf('One for %<name>s, one for me.', { :name => name })
  end

  # Using interpolation
  def self.two_fer_interpolation(name = 'you')
    "One for #{name}, one for me."
  end
end
