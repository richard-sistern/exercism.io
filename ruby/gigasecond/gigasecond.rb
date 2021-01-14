# Calculate the moment when someone has lived for 10^9 seconds.
# A gigasecond is 10^9 (1,000,000,000) seconds.

class Gigasecond
  def self.from(dob)
    dob + 1000000000
  end
end
