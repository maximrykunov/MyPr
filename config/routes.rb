Mypr::Application.routes.draw do
  resources :articles

  # ----------------------------------------------------------------------------
  # BACKEND
  # ----------------------------------------------------------------------------

  get 'admin' => 'backend/app_pages#index', as: 'admin'
  namespace :backend do
    resources :app_pages, only: 'home'
    # resources :users, except: 'index' do
    #   get 'confirm', on: :member
    #   get '(/limit/:limit)(/page/:page)', action: 'index', on: :collection, as: '',
    #     constraints: { limit: /\d+/, page: /\d+/ }
    # end
    # resources :news, except: 'index' do
    #   get '(/limit/:limit)(/page/:page)', action: 'index', on: :collection, as: '',
    #     constraints: { limit: /\d+/, page: /\d+/ }
    # end
  
    root to: "app_pages#index"
  end

  root to: "app_pages#home"
end
