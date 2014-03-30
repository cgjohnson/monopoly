class GameMaster
  #action methods
  def self.speak(words)
    puts words
  end
  def self.inquire(question)
    puts question
    answer = gets.chomp
  end
end
