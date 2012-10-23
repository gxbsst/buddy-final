module Refinery
  module Applications
    module Admin
      class ApplicationsController < ::Refinery::AdminController

        crudify :'refinery/applications/application',
                :title_attribute => 'volunteer_url', :xhr_paging => true

      end
    end
  end
end
