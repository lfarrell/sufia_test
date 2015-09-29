class GenericFilesController < ApplicationController
  include Unclib::FilesControllerBehavior

  self.presenter_class = ThesisPresenter
  self.edit_form_class = Unclib::Forms::ThesisEditForm

  def new
    @batch_id = Batch.create.id
  end
end