Rails.application.routes.draw do
  get '/', to: 'voices#index'
  resources :voices do
    collection do
      post :confirm
    end
  end
end