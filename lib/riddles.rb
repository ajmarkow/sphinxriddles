require "rspec"

class Riddles
  attr_reader(:riddle_answer, :riddle_storage)
  attr_accessor(:user_answer)

  def initialize()
    @theriddlehash = riddle_storage
    @riddle_answer = riddle_answer
    @user_answer = user_answer
  end

  def get_random
    riddlenumber = random_number = rand(3)
    return @theriddlehash = riddlenumber
  end

  def get_riddle(random_number,riddleoranswer)
    riddleoranswer.to_str
    if riddleoranswer == "riddle"
   @theriddlehash = Hash.new
    @theriddlehash.store(0, "What goes up but never comes down?")
    @theriddlehash.store(1, "I shave every day, but my beard stays the same. What am I?")
    @theriddlehash.store(2, "What can you break, even if you never pick it up or touch it?")
    @theriddlehash.store(3,"What can’t talk but will reply when spoken to?")
     return @theriddlehash.fetch(random_number)
    elsif riddleoranswer == "answer"
   @theanswerhash = Hash.new
    @theanswerhash.store(0, "Your Age")
    @theanswerhash.store(1, "A barber")
    @theanswerhash.store(2, "A promise")
    @theanswerhash.store(3, "An echo")
    return @theanswerhash.fetch(random_number)
    end
   
  end

  def pick_answer
    @user_answer = riddle_storage.fetch(random_number)
  end

  def check_answer(random_number, answer)
    answertocheck = self.get_riddle(random_number, 'answer')
    puts answertocheck
    puts @user_answer
    if  @user_answer == answertocheck
      return true
    elsif @user_answer != answertocheck
      return false
    end
  end
end
