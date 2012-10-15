# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
	before_filter :get_static_pages

	def get_static_pages
		@pages = Refinery::Pages::Page.where("parent_id = 17")
	end

end
