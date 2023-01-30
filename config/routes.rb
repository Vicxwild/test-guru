Rails.application.routes.draw do

  root to: 'tests#index'

  resources :tests, only: %i[index show] do
    resources :questions do
      resources :answers, except: :index
    end

    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
    end
  end
end
