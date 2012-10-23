module Refinery
  module Participates
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Participates

      engine_name :refinery_participates

      initializer "register refinerycms_participates plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "participates"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.participates_admin_participates_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/participates/participate'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Participates)
      end
    end
  end
end
