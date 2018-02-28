require('spec_helper')

describe(Survey) do
  describe("#surveys") do
    it('adds a survey') do
      new_survey = Survey.create({:survey_title => "hello world", :survey_question => "what does the fox say?", :survey_answer => "kon"})
      expect(new_survey.questions()).to(eq([new_survey]))
    end
    it("converts the first letter of all inputted words to uppercase") do
      survey = Survey.create({:survey_title => "hello world"})
      expect(survey.titleize()).to(eq("Hello World"))
    end
  end
end
