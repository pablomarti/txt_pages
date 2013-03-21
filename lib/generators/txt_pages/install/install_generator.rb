module TxtPages
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Install TxtPages"

      def copy_migrations
      	rake "txt_pages:install:migrations"
        TxtPages::Engine.load_seed
      end
      
    end
  end
end