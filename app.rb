require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/question")
require("./lib/question")
require("pg")

DB = PG.connect({:dbname => "survey"})

get('/') do
  erb(:home)
end
