class CreateParticipatesParticipates < ActiveRecord::Migration

  def up
    create_table :refinery_participates do |t|
      t.string :title
      t.integer :photo_id
      t.string :photo_url
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-participates"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/participates/participates"})
    end

    drop_table :refinery_participates

  end

end
