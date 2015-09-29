class BatchEditsController < ApplicationController
  include Hydra::BatchEditBehavior
  include GenericFileHelper
  include Unclib::BatchEditsControllerBehavior

  def terms
    Unclib::ThesisBatchEditForm.terms
  end
end