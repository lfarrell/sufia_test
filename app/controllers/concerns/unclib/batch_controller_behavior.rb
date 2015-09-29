module Unclib
  module BatchControllerBehavior
    extend ActiveSupport::Concern
    include Sufia::BatchControllerBehavior

    def edit
      @batch = Batch.find_or_create(params[:id])
      @form = edit_form
    end


    def update
      authenticate_user!
      @batch = Batch.find_or_create(params[:id])
      @batch.status = ["processing"]
      @batch.save

      file_attributes = Unclib::Forms::ThesisBatchEditForm.model_attributes(params[:generic_file])
      Sufia.queue.push(BatchUpdateJob.new(current_user.user_key, params[:id], params[:title], file_attributes, params[:visibility]))
      flash[:notice] = 'Your files are being processed by ' + t('sufia.product_name') + ' in the background. The metadata and access controls you specified are being applied. Files will be marked <span class="label label-danger" title="Private">Private</span> until this process is complete (shouldn\'t take too long, hang in there!). You may need to refresh your dashboard to see these updates.'
      if uploading_on_behalf_of? @batch
        redirect_to sufia.dashboard_shares_path
      else
        redirect_to sufia.dashboard_files_path
      end
    end

    protected
    def add_to_collection
      @batch.generic_files.each do |gf|
        @collection.member_ids = @collection.member_ids.push(gf.id)
        @collection.save
      end

    end

    def edit_form
      generic_file = ::GenericFile.new
      edit_form_class.new(generic_file)
    end

  end
end