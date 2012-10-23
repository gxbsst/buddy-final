require 'spec_helper'

module Refinery
  module Applications
    describe Application do
      describe "validations" do
        subject do
          FactoryGirl.create(:application,
          :volunteer_url => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:volunteer_url) { should == "Refinery CMS" }
      end
    end
  end
end
