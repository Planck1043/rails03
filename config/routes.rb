Rails.application.routes.draw do
  root 'welcome#index'

  resources :notices do
    collection do
      get  :indexa
      post :createa
      post  :updatea
    end
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
