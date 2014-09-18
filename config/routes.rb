BillforwardTest::Application.routes.draw do
  root 'subscriptions#index'
  resources :accounts
  resources :subscriptions do
    resources :usage_sessions, shallow: true
  end
  resources :invoices
  resources :usage_session, only: [:update] do
    resources :usages, only: [:create]
  end
end
