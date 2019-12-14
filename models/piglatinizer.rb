class PigLatinizer
  attr_reader :text
  
  def initialize(text)
    @text = text.downcase
  end
  
  def latinizer
    word1 = text.split(" ")[0]
    word2 = text.split(" ")[1]
    
    consonants2 = word2..split("").scan(/[bcdfghjklmnpqrstvwxyz]/)
    
    word1.map do |letter|
      consonants1 = word1.split("").scan(/[bcdfghjklmnpqrstvwxyz]/)
      if letter == consonants1
    end
    
  end
  
end