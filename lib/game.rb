class Hangman
@@list = []
@@counter = 0
  attr_accessor :word, :attempts, :display_word

  def initialize()
    @word = ("epicodus").split('')
    @attempts = @@counter
    @display_word = @word.length
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.make_guess(user_letter)
    if @@list[0].word.include?(user_letter)
      message = "nice!"
    else
      @@list.each do |item|
        item.attempts = item.attempts + 1
      end
      message = "bummer!"
    end
  end

  def self.find()
    @@list[0].attempts
  end

  def self.end_of_game()
    if @@list[0].attempts == 7
      return "game over!"
    elsif @@list[0].attempts < 7
      return "you have " + ((7-(@@list[0].attempts)).to_s) + " remaining"
    end
  end

end
