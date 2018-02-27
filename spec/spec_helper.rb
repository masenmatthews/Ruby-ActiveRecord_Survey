require("rspec")
require("pg")
require("sinatra/activerecord")
require("question")

RSpec.configure do |config|
  config.after(:each) do
    Question.all().each() do |task|
      task.destroy()
    end
  end
end
