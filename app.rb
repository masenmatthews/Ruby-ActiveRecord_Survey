require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/question")
require("pg")

DB = PG.connect({:dbname => "survey"})

get('/') do
  erb(:home)
end
