# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Applications" do
    describe "Admin" do
      describe "applications" do
        login_refinery_user

        describe "applications list" do
          before do
            FactoryGirl.create(:application, :volunteer_url => "UniqueTitleOne")
            FactoryGirl.create(:application, :volunteer_url => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.applications_admin_applications_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.applications_admin_applications_path

            click_link "Add New Application"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Volunteer Url", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Applications::Application.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Volunteer Url can't be blank")
              Refinery::Applications::Application.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:application, :volunteer_url => "UniqueTitle") }

            it "should fail" do
              visit refinery.applications_admin_applications_path

              click_link "Add New Application"

              fill_in "Volunteer Url", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Applications::Application.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:application, :volunteer_url => "A volunteer_url") }

          it "should succeed" do
            visit refinery.applications_admin_applications_path

            within ".actions" do
              click_link "Edit this application"
            end

            fill_in "Volunteer Url", :with => "A different volunteer_url"
            click_button "Save"

            page.should have_content("'A different volunteer_url' was successfully updated.")
            page.should have_no_content("A volunteer_url")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:application, :volunteer_url => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.applications_admin_applications_path

            click_link "Remove this application forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Applications::Application.count.should == 0
          end
        end

      end
    end
  end
end
