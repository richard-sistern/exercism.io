class ResistorColor
  COLORS = %w(black brown red orange yellow green blue violet grey white)

  def self.color_code(color)
    COLORS.index(color)
  end
end

if $PROGRAM_NAME == __FILE__
  puts ResistorColor.color_code('black')
  puts ResistorColor.color_code('blue')
end
