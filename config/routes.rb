Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'messages#index'
  
  resources :messages
end

# create  app/controllers/messages_controller.rb
#       invoke  erb
#       create    app/views/messages

# $ rails g controller Messages --no-helper --no-assets

