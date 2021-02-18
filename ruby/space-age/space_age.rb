class SpaceAge
  SECONDS_IN_EARTH_YEAR = 31_557_600

  ORBITAL_PERIOD_IN_EARTH_YEARS = {
    earth:    1,
    mercury:  0.2408467,
    venus:    0.61519726,
    mars:     1.8808158,
    jupiter:  11.862615,
    saturn:   29.447498,
    uranus:   84.016846,
    neptune:  164.79132
  }

  private

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  public

  ORBITAL_PERIOD_IN_EARTH_YEARS.each do |planet, orbital_period|
    define_method("on_#{planet}".to_sym) do
      @seconds / (SECONDS_IN_EARTH_YEAR * orbital_period)
    end
  end
end
