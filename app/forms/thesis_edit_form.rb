class ThesisEditForm < ThesisPresenter
  include HydraEditor::Form
  include HydraEditor::Form::Permissions

  self.required_fields = [:title, :dissertant, :subject, :language, :abstract,
                          :thesis_level, :thesis_name, :department, :graduation_date, :advisor,
                          :committee_member, :rights]
     
end