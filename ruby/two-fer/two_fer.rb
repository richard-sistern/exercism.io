class TwoFer
  # Using full sptringf syntax
  def self.two_fer(name = 'you')
    sprintf('One for %<name>s, one for me.', { :name => name })
  end
end
