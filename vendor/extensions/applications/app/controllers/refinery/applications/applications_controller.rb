module Refinery
  module Applications
    class ApplicationsController < ::ApplicationController

      before_filter :find_all_applications
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @application in the line below:
        present(@page)
      end

      def show
        @application = Application.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @application in the line below:
        present(@page)
      end

    protected

      def find_all_applications
        @applications = Application.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/applications").first
      end

    end
  end
end
