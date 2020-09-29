require "rspec"

class Riddles
  attr_reader(:riddle_answer, :riddle_storage)
  attr_accessor(:user_answer)

  def initialize()
    theriddlehash = riddle_storage
    @riddle_answer = riddle_answer
    @user_answer = user_answer
  end

  def get_random
    riddlenumber = random_number = rand(3)
    return theriddlehash = riddlenumber
  end

  def get_riddle(random_number)
    theriddlehash = Hash.new
    theriddlehash.store(0, "What goes up but never comes down?")
    theriddlehash.store(1, "I shave every day, but my beard stays the same. What am I?")
    theriddlehash.store(2, "What can you break, even if you never pick it up or touch it?")
    theriddlehash.store(3,"What can’t talk but will reply when spoken to?")
    return theriddlehash.fetch(random_number)
  end

  def pick_riddle
    @user_answer = riddle_storage.fetch(random_number)
  end
end
