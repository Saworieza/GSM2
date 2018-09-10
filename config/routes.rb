Rails.application.routes.draw do
  resources :invoices
  resources :sites
  resources :customerpos
  resources :customerquotes
  resources :towns
  resources :regions
  resources :milestones
  resources :scopes
  resources :statuses
  resources :costcenters
  resources :accounts
  root 'home#index'
end
