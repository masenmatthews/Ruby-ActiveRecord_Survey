require('spec_helper')

describe(Question) do
  it("converts the first letter of all inputted words to uppercase") do
    question = Question.create({:survey_title => "hello world"})
    expect(question.titleize()).to(eq("Hello World"))
  end
end
