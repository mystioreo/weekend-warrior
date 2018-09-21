class Alouette

  PARTS = ["la tete", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

  def self.lines_for_verse(verse_num)
    return PARTS[0..verse_num - 1]
  end

  def self.verse(verse_num)
  end

  def self.sing
  end
end
