Rails.application.routes.draw do
  resources :invitations
  root 'cycles#index'
end
