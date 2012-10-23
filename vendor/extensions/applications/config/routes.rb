Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :applications do
    resources :applications, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :applications, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :applications, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
