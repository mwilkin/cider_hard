Rails.application.routes.draw do

  root :to => 'drinks#index'

  resources :drinks
    resources :batches
end
