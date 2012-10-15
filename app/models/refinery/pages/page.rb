module Refinery
  module Pages
    class Page < Refinery::Core::BaseModel
      self.table_name = 'refinery_pages'

       attr_accessible :parent_id, :path, :slug, :show_in_menu, :link_url, :menu_match, :deletable, :draft

      # acts_as_indexed :fields => [:title, :url]

      # validates :title, :presence => true, :uniqueness => true

      # belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end