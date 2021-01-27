class ResistorColorDuo
  BANDS =
    {
      black: '0',
      brown: '1',
      red: '2',
      orange: '3',
      yellow: '4',
      green: '5',
      blue: '6',
      violet: '7',
      grey: '8',
      white: '9'
    }

  def self.value(colors)
    colors.take(2)
      .sum('') {|color| BANDS[color.to_sym]}
      .to_i
  end
end

if $PROGRAM_NAME == __FILE__
  puts ResistorColorDuo.value %w'orange orange'
  puts ResistorColorDuo.value %w'green brown orange'
end
