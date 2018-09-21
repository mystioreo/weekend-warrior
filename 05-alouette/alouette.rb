class Alouette

  PARTS = ["la tete", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

  def self.lines_for_verse(verse_num)
    return PARTS[0..verse_num - 1]
  end

  def self.verse(verse_num)
    parts = self.lines_for_verse(verse_num)
    verse = ""

    2.times {verse << "Je te plumerai #{parts.last}.\n"}

    parts.reverse_each do |part|
      2.times {verse << "Et #{part}!\n"}
    end

    2.times {verse << "Alouette!\n"}

    verse << "A-a-a-ah"

    return verse
  end

  def self.sing
  end
end

puts Alouette.verse(5)
