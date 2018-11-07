Rails.application.routes.draw do
  get 'payment_form/:id' => 'payments#payment_form', as: 'payment_form'

  devise_for :users
  resources :payments
  resources :contracts
  resources :stages
  resources :contractorinvoices
  resources :contractorpos
  resources :contractorquotes
  resources :contractors
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
