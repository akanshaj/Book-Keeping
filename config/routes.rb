Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :customers

  get '/customers', to: 'customers#index'
  get '/customers/create', to: 'customers#create'
  get '/customers/:id', to: 'customers#show'

  resources :transactions do
    collection do
      get "get_by_timestamp" => "transactions#get_transaction_by_timestamp", :as => :get_transaction_by_timestamp
      get "get_by_phone_no" => "transactions#get_all_transaction_by_phone_no", :as => :get_all_transaction_by_phone_no
    end
  end

  get '/transactions', to: 'transactions#index'
  get '/transactions/create',to: 'transactions#create'
  get '/transactions/:id',to: 'transactions#show'







#  resources :transaction:
  #   collection do
  #   get "all_transaction"

  # end
  # end
  end
