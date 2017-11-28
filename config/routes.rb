Rails.application.routes.draw do
    root 'posts#index'
  devise_for :users
  resources :posts do
    member do
      post '/create_comment' => 'posts#create_comment', as: 'create_comment_to'
    end


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
