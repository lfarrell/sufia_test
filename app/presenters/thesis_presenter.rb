class ThesisPresenter < Sufia::GenericFilePresenter
  include Hydra::Presenter

  self.model_class = ::GenericFile
  self.terms = [:title, :alternative, :subject, :resource_type, :dissertant,
                :advisor, :committee_member, :department, :specialization, :date_submitted,
                :date_accepted, :graduation_date, :thesis_name, :thesis_level, :abstract, :language,
                :rights, :is_part_of]
end