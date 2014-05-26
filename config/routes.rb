Rails.application.routes.draw do
  root to: 'main#index'

  match 'admin/login', to: 'admin#login', as: :admin_login, via: [:get, :post]
  get 'admin/logout', to: 'admin#logout', as: :admin_logout
end
