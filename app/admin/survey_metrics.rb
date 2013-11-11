ActiveAdmin.register SurveyMetrics do
  index do
    column :name
    column :question
    column :answer
    column :target
    column :accuracy
  end
end
