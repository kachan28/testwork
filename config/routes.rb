Rails.application.routes.draw do
  get 'main/index'
  get 'main/update'
  get 'main/create'

  root :to => "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
