require("sinatra")
require("sinatra/reloader")
require("./lib/riddles")
also_reload("lib/**/*.rb")

get("/riddles") do
  testriddle = Riddles.new
  riddlenumber = testriddle.get_random()
  @displayedriddle = testriddle.get_riddle(riddlenumber, 'riddle')
  erb(:showriddle)
end

post("/riddles") do



  erb(:success)
end
