require('spec_helper')

describe(Survey) do
  it('adds a survey') do
    survey = Survey.create({:survey_title => "hello world", :survey_question => "what does the fox say?", :survey_answer => "kon"})
    expect(survey.add()).to(eq(:survey_title => "hello world", :survey_question => "what does the fox say?", :survey_answer => "kon"))
  end
  it("converts the first letter of all inputted words to uppercase") do
    survey = Survey.create({:survey_title => "hello world"})
    expect(survey.titleize()).to(eq("Hello World"))
  end
end
