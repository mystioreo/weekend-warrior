require 'pry'

class Alouette

  PARTS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

  def self.lines_for_verse(verse_num)
    lines = []
    (verse_num + 1).times do |i|
      lines << "Et #{PARTS[i]}!"
    end
    lines.reverse!
    return lines
  end

  def self.verse(verse_num)
    parts = self.lines_for_verse(verse_num)
    verse = ""

    2.times {verse << "Je te plumerai #{PARTS[verse_num]}.\n"}

    parts.each do |part|
      2.times {verse << "#{part}\n"}
    end

    2.times {verse << "Alouette!\n"}

    verse << "A-a-a-ah"

    return verse
  end

  def self.sing
    song = ""

    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    PARTS.length.times do |i|
      song << refrain + "\n\n"
      song << self.verse(i) + "\n\n"
    end
    song << refrain

    return song
  end
end
#
# puts Alouette.sing
