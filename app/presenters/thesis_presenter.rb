class ThesisPresenter < Sufia::GenericFilePresenter
  self.terms = [:title, :alternative, :subject, :resource_type, :dissertant,
                :advisor, :committee_member, :department, :specialization, :date_submitted,
                :date_accepted, :graduation_date, :thesis_name, :thesis_level, :abstract, :language,
                :rights, :is_part_of]
end