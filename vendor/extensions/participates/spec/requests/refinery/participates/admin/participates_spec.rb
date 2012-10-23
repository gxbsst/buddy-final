# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Participates" do
    describe "Admin" do
      describe "participates" do
        login_refinery_user

        describe "participates list" do
          before do
            FactoryGirl.create(:participate, :title => "UniqueTitleOne")
            FactoryGirl.create(:participate, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.participates_admin_participates_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.participates_admin_participates_path

            click_link "Add New Participate"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Participates::Participate.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Participates::Participate.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:participate, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.participates_admin_participates_path

              click_link "Add New Participate"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Participates::Participate.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:participate, :title => "A title") }

          it "should succeed" do
            visit refinery.participates_admin_participates_path

            within ".actions" do
              click_link "Edit this participate"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:participate, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.participates_admin_participates_path

            click_link "Remove this participate forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Participates::Participate.count.should == 0
          end
        end

      end
    end
  end
end
