module Unclib

  module FilesController

    extend ActiveSupport::Autoload
    include Sufia::FilesController
  end

  module FilesControllerBehavior

    extend ActiveSupport::Concern
    include Sufia::FilesControllerBehavior

    protected
    def actor
      @actor ||= Unclib::GenericFile::Actor.new(@generic_file, current_user, attributes)
    end

    def attributes
      attributes = params
    end

  end
end