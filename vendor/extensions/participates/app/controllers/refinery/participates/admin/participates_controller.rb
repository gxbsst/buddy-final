module Refinery
  module Participates
    module Admin
      class ParticipatesController < ::Refinery::AdminController

        crudify :'refinery/participates/participate', :xhr_paging => true

      end
    end
  end
end
