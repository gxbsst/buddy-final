module Refinery
  module Shares
    module Admin
      class SharesController < ::Refinery::AdminController

        crudify :'refinery/shares/share', :xhr_paging => true

      end
    end
  end
end
