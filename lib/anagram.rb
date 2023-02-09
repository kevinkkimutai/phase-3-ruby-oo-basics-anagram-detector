class Anagram
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select do |w|
        next if w.downcase == @word.downcase
        w.downcase.chars.sort == @word.downcase.chars.sort
      end
    end
  end
  
  detector = Anagram.new("listen")
  p detector.match(["enlists", "google", "inlets", "banana"])
  