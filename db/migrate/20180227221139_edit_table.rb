class EditTable < ActiveRecord::Migration[5.1]
  def change
  remove_column(:questions, :survey_title, :string)
  end
end
