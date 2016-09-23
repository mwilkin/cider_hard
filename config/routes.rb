Rails.application.routes.draw do

  root :to => 'drinks#index'

  resources :drinks do
    resources :batches
  end
end
