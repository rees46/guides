Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :ru do
    get '/', to: 'index#index'
    get '/overview', to: 'index#overview'
    get '/dashboard', to: 'index#dashboard'
    get '/integration', to: 'index#integration'
    get '/cms', to: 'index#cms'
  end

  root to:'home#index'
end
