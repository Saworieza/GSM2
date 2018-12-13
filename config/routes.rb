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

  #page not found
  if Rails.env.production?
    get '404', to: 'application#page_not_found'
    get '422', to: 'application#server_error'
    get '500', to:  'application#server_error'
  end
end
