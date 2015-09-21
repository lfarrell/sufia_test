class GenericFilesController < ApplicationController
  include Sufia::Controller
  include Sufia::FilesControllerBehavior

  self.presenter_class = ThesisPresenter
  self.edit_form_class = ThesisEditForm
end