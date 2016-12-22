Rails.application.routes.draw do
  root 'transactions#index'
  post 'payment', to: 'transactions#payment'
end
