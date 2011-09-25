Naked::Application.routes.draw do

  resources :games

  resources :members, only:[:index]

  devise_for :users do
    root :to => 'devise/sessions#new'
  end

  resources :questions do
    resources :answers
  end

  get 'dashboard' => 'dashboard#index'
end
