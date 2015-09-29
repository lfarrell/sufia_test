class BatchController < ApplicationController
  include Unclib::BatchControllerBehavior

  self.edit_form_class = Unclib::Forms::ThesisEditForm
end