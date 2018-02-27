class Questions < ActiveRecord::Migration[5.1]
  def change
  create_table(:questions) do |t|
    t.column(:survey_title, :string)
    t.column(:survey_question, :string)
    t.column(:survey_answer, :string)
    end
  end
end
