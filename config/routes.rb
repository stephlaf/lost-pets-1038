Rails.application.routes.draw do
  get '/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show', as: :pet
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'
end
