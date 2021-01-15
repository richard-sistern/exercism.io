class Complement
  RNA_TRANSCRIPTION = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }

  def self.of_dna(nucleotides)
    nucleotides
      .split('')
      .map {|nucleotide| RNA_TRANSCRIPTION[nucleotide.to_sym]}
      .join('')
  end
end

if $PROGRAM_NAME == __FILE__
  puts Complement.of_dna('ACGTGGTCTTAA')
end
