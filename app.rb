require("sinatra")
require("sinatra/reloader")
require("./lib/riddles")
also_reload("lib/**/*.rb")

get("/riddles") do
  testriddle = Riddles.new
  @riddlenumber = testriddle.get_random()
  @displayedriddle = testriddle.get_riddle(@riddlenumber, "riddle")
  erb(:showriddle)
end

get('/riddles/:key') do
end

post("/riddles") do
  testriddle = Riddles.new
  random = testriddle.get_random()
  if testriddle.check_answer(@riddlenumber, @user_answer) == true
    erb(:success)
  elsif testriddle.check_answer(@riddlenumber, @user_answer) == false
    erb(:wrong)
  end
end
