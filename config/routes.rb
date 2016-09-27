Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registration' } 
  root "pages#show", page: "home"

  resources :drinks do
    resources :batches, :except => [:show, :index ]
  end
end
