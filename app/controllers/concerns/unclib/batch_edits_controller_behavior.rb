module Unclib
  module BatchEditsControllerBehavior
    extend ActiveSupport::Concern
    include Sufia::BatchEditsControllerBehavior

    def redirect_to_return_controller
      if params[:return_controller]
        redirect_to url_for(controller: params[:return_controller], only_path: true)
      else
        redirect_to sufia.dashboard_index_path
      end
    end
    
    protected
    def terms
      Unclib::Forms::BatchEditForm.terms
    end
    def generic_file_params
      Unclib::Forms::BatchEditForm.model_attributes(params[:generic_file])
    end

  end
end