module Refinery
  module Participates
    class Participate < Refinery::Core::BaseModel
      self.table_name = 'refinery_participates'

      attr_accessible :title, :photo_id, :photo_url, :position

      acts_as_indexed :fields => [:title, :photo_url]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
