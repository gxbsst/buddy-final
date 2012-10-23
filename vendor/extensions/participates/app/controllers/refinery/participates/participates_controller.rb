module Refinery
  module Participates
    class ParticipatesController < ::ApplicationController

      before_filter :find_all_participates
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @participate in the line below:
        present(@page)
      end

      def show
        @participate = Participate.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @participate in the line below:
        present(@page)
      end

    protected

      def find_all_participates
        @participates = Participate.order('position DESC, created_at ASC').limit(4)
        @applications = Refinery::Applications::Application.order('position ASC, created_at DESC').limit(1)
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/participates").first
      end

    end
  end
end
