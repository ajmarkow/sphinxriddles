require("rspec")
require("riddles")

describe ("get_riddle") do
  it("retrieves a riddle") do
    testriddle = Riddles.new()
    expect(testriddle.get_riddle(0,'riddle')).to(eq("What goes up but never comes down?"))
    expect(testriddle.get_riddle(1,'riddle')).to(eq("I shave every day, but my beard stays the same. What am I?"))
    expect(testriddle.get_riddle(2,'riddle')).to(eq("What can you break, even if you never pick it up or touch it?"))
    expect(testriddle.get_riddle(3,'riddle')).to(eq("What can’t talk but will reply when spoken to?"))
    expect(testriddle.get_riddle(0,'answer')).to(eq("Your Age"))
    expect(testriddle.get_riddle(1,'answer')).to(eq("A barber"))
    expect(testriddle.get_riddle(2,'answer')).to(eq("A promise"))
    expect(testriddle.get_riddle(3,'answer')).to(eq("An echo"))
  end
end

describe ("get_random") do
  it("gets a random number") do
    testriddle = Riddles.new()
    expect(testriddle.get_random()).to(eq(0).or eq(1).or eq(2).or eq(3))
  end
end
