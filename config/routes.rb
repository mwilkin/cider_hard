Rails.application.routes.draw do

  devise_for :users

  root :to => 'drinks#index'
  resources :drinks do
    resources :batches, :except => [:show, :index ]
  end
end
