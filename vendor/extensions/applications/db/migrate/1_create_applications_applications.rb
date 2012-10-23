class CreateApplicationsApplications < ActiveRecord::Migration

  def up
    create_table :refinery_applications do |t|
      t.string :volunteer_url
      t.string :donate_url
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-applications"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/applications/applications"})
    end

    drop_table :refinery_applications

  end

end
