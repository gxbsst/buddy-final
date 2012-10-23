Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :participates do
    resources :participates, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :participates, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :participates, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
