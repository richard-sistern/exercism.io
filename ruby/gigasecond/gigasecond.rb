class Gigasecond
  # Calculate the moment when someone has lived for 10^9 seconds.
  def self.from(dob)
    # A gigasecond is 10^9 (1,000,000,000) seconds.
    dob + 1000000000
  end
end
