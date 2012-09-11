module Refinery
  module Shares
    class Share < Refinery::Core::BaseModel
      self.table_name = 'refinery_shares'

      attr_accessible :title, :people_name, :time, :content, :select_show, :position

      acts_as_indexed :fields => [:title, :people_name, :content]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
