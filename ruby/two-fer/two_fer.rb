class TwoFer
  def self.two_fer(name = 'you')
    # With an annotation reference
    'One for %<name>s, one for me.' % { name: name }
  end
end
