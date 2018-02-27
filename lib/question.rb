class Question < ActiveRecord::Base
  # belongs_to(:survey)
  validates(:survey_title, {:presence => true, :length => {:maximum => 50}})
  before_save(:titleize)

  scope(:not_done, -> do
    where({:done => false})
  end)

  # private

  def titleize
    self.survey_title=(survey_title().titleize())
  end
end
