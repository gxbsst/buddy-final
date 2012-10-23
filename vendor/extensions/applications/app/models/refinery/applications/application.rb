module Refinery
  module Applications
    class Application < Refinery::Core::BaseModel
      self.table_name = 'refinery_applications'

      attr_accessible :volunteer_url, :donate_url, :position

      acts_as_indexed :fields => [:volunteer_url, :donate_url]

      validates :volunteer_url, :presence => true, :uniqueness => true
    end
  end
end
