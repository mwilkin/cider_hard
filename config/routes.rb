Rails.application.routes.draw do
  resources :drinks
    resources :batches
end
