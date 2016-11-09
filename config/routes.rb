Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :books
      delete '/clean' => 'books#clean', as: :clean
    end
  end
end
