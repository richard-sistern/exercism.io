class ResistorColorDuo
  BANDS = %w(black brown red orange yellow green blue violet grey white)

  def self.value(colors)
    colors[0..1]
      .map {|color| BANDS.index(color)}
      .join
      .to_i
  end
end

if $PROGRAM_NAME == __FILE__
  puts ResistorColorDuo.value(["orange", "orange"])
  puts ResistorColorDuo.value(["green", "brown", "orange"])
end
